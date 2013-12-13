#include "rayScene.h"
#include <GL/glut.h>
#include <math.h>


///////////////////////
// Ray-tracing stuff //
///////////////////////

Point3D RayScene::Reflect(Point3D v,Point3D n){
	return v - (n  * (v.dot(n))* 2);
}

int RayScene::Refract(Point3D v,Point3D n,double ir,Point3D& refract){
	v = -v;

    if (n.dot(v) < 0) {

           n = n * -1;

    }
    else
    ir = 1 / ir;
    double theta = acos(v.dot(n));
    double x = sin(theta) * ir;
    if (x > 1 || x < -1) {
            return 0;
    }

    double R = asin(x);

    refract = n*(ir*cos(theta) - cos(R)) - v*ir;
    refract /= refract.length();
    return 1;
}

Ray3D RayScene::GetRay(RayCamera* camera,int i,int j,int width,int height){

	Point3D p0 = camera->position;
	double d = 1;
	double angle = camera->heightAngle/2.0;

	Point3D up = camera->up;
	Point3D towards = camera->direction;
	Point3D right = camera->right;

	Point3D p1 = p0 + (towards * d) - (right * d * tan(angle))
	                        - (up * d * tan(angle));
	Point3D p2 = p0 + (towards * d) + (right * d * tan(angle))
	                        - (up * d * tan(angle));
	Point3D p3 = p0 + (towards * d) - (right * d * tan(angle))
		                    + (up * d * tan(angle));
	Point3D p4 = p0 + (towards * d) + (right * d * tan(angle))
	                        + (up * d * tan(angle));

	Point3D px = p1 + (p2 - p1) * ((i + .5) / width)
	                        + (p3 - p1) * ((j + .5) / height);

	Point3D direction = px - p0;

	direction = direction / direction.length();

	return Ray3D(p0, direction);
}

Point3D RayScene::GetColor(Ray3D ray,int rDepth,Point3D cLimit){
	// Declare vars

	        Point3D color;
	        RayIntersectionInfo iInfo;

	        if(rDepth <= 0) return Point3D();

	        double distance = group->intersect(ray, iInfo, -1);
            if(distance < 0) return background;

            color = iInfo.material->emissive + ambient * iInfo.material->ambient;
            //printf("light num :%d \n",lightNum);
            Point3D shadow;
            int shadeNum = 0;
            for (int i = 0; i < lightNum; i++) {


            	  //shadow = lights[i]->isInShadow(iInfo, group, shadeNum);
            	  shadow = lights[i]->transparency(iInfo, group, cLimit);

                  color += lights[i]->getDiffuse(ray.position, iInfo)*shadow;
                  color += lights[i]->getSpecular(ray.position, iInfo)*shadow;


            	  //add reflection
            	  Point3D refl = Reflect(ray.direction, iInfo.normal);
            	  Ray3D reflRay = Ray3D(iInfo.iCoordinate, refl);
            	  reflRay.position = reflRay(0.00001);
            	  Point3D spec = iInfo.material->specular;

                  //recursively add reflection color
            	  if(rDepth>0 && spec.p[0]>cLimit[0]&&spec.p[1]>cLimit[1]&&spec.p[2]>cLimit[2])
            	  {
            		  Point3D reflColor = GetColor(reflRay, rDepth-1, cLimit/spec);
            		  //check if Reflection Color =  Background Color
            		  if (reflColor.p[0] == background.p[0]
            		      && reflColor.p[1] == background.p[1]
            		      && reflColor.p[2] == background.p[2]) {
            			  reflColor = Point3D();
            		 }
            		  reflColor *= spec;
            		  color += reflColor;
            	  }


            }

            //add refraction
            Ray3D refrac = Ray3D(iInfo.iCoordinate, Point3D());
            Point3D refracColor;
            Point3D trans = iInfo.material->transparent;
            if(rDepth>0 && trans.p[0]>cLimit[0]&&trans.p[1]>cLimit[1]&&trans.p[2]>cLimit[2]){
            if (Refract(ray.direction, iInfo.normal, iInfo.material->refind,
                        			  refrac.direction)!=0) {
                     refrac.position = refrac(0.00001);

                      refracColor = GetColor(refrac, rDepth - 1, cLimit/trans);
                      if (refracColor.p[0] == background.p[0]
                        	                                 && refracColor.p[1] == background.p[1]
                        	                                 && refracColor.p[2] == background.p[2]) {
                        	              refracColor = Point3D();
                        	        }

                  refracColor *= trans;
                   color += refracColor;
              }
            }
           //check color boundary
           for(int j=0;j<3;j++){
        	   if(color.p[j]<0) color.p[j]=0;
        	   if(color.p[j]>1) color.p[j]=1;
           }
            return color;


}

//////////////////
// OpenGL stuff //
//////////////////
void RayMaterial::drawOpenGL(void){
            
	//draw material

    //2D texture mapping
    printf("texture procedure!!!\n");
	if(tex != NULL){
		//generate the texture image
		GLubyte texImage[64][64][4];
        int i, j, c;
    
		// for (i = 0; i < 64; i++) {
		// 	for (j = 0; j < 64; j++) {
		// 		c = ((((i&0x8)==0)^((j&0x8))==0))*255;
		// 		texImage[i][j][0] = (GLubyte) c;
		// 		texImage[i][j][1] = (GLubyte) c;
		// 		texImage[i][j][2] = (GLubyte) c;
		// 		texImage[i][j][3] = (GLubyte) 255;
		// 	}
		// }

		
		printf("2D texture!!!\n");
		glEnable(GL_TEXTURE_2D);
		
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 
					 tex->img->height(),
					 tex->img->width(), 
					 0, GL_RGBA, 
					 GL_UNSIGNED_BYTE, &(tex->img->pixel(0,0)));
		
		//glGetTexImage(GL_TEXTURE_2D,0,GL_RGBA,GL_UNSIGNED_BYTE,&(tex->img));
		
	}
	else{
		glDisable(GL_TEXTURE_2D);
	}
	//light effect
	GLfloat material_diffuse[] = { diffuse[0], diffuse[1], diffuse[2],
										  diffuse[3] };
		   
	GLfloat material_ambient[] = { ambient[0], ambient[1], ambient[2],
										  ambient[3] };
	
	GLfloat material_specular[] = { specular[0], specular[1],specular[2],specular[3] };
	
	GLfloat material_emissive[] = { emissive[0], emissive[1], emissive[2],emissive[3] };
	
	GLfloat material_shininess[] = { specularFallOff };
	
	glMaterialfv(GL_FRONT, GL_DIFFUSE, material_diffuse);
	glMaterialfv(GL_FRONT, GL_AMBIENT, material_ambient);
	glMaterialfv(GL_FRONT, GL_SPECULAR, material_specular);
	glMaterialfv(GL_FRONT, GL_EMISSION, material_emissive);
	glMaterialfv(GL_FRONT, GL_SHININESS, material_shininess);
   
}
void RayTexture::setUpOpenGL(void){

	printf("set up texture!\n");
	//glClearColor (0.0, 0.0, 0.0, 0.0);
	//glShadeModel(GL_FLAT);
	//glEnable(GL_DEPTH_TEST);
	//glClearColor (0.0, 0.0, 0.0, 0.0);
	//glShadeModel(GL_FLAT);
	//glEnable(GL_DEPTH_TEST);

	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
	glGenTextures(1, &openGLHandle);
	glBindTexture(GL_TEXTURE_2D, openGLHandle);
    // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
	// glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER,
					GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
					GL_LINEAR);
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
}
