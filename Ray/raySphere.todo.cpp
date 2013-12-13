#include <math.h>
#include <GL/glut.h>
#include "rayScene.h"
#include "raySphere.h"

////////////////////////
//  Ray-tracing stuff //
////////////////////////
double RaySphere::intersect(Ray3D ray,RayIntersectionInfo& iInfo,double mx){
	return -1;
}
BoundingBox3D RaySphere::setBoundingBox(void){
	Point3D p=Point3D(radius,radius,radius);
	bBox=BoundingBox3D(center+p,center-p);
	return bBox;
}

//////////////////
// OpenGL stuff //
//////////////////
int RaySphere::drawOpenGL(int materialIndex){
	

        if (material->index != materialIndex) {

                material->drawOpenGL();
        }

        GLUquadric *quad;
	//glBegin(GL_);
        //Point3D tex = material->tex;
	quad = gluNewQuadric();

        gluQuadricNormals(quad, GLU_SMOOTH);
        gluQuadricDrawStyle(quad, GLU_FILL);
        gluQuadricOrientation(quad, GLU_OUTSIDE);    
        gluQuadricTexture(quad, GL_TRUE);
	//glTexCoord2f(tex.p[0], tex.p[1]);

	glPushMatrix();

	glTranslatef(center.p[0],center.p[1],center.p[2]);
	
	gluSphere(quad,radius,100,100);
        
	glPopMatrix();
	gluDeleteQuadric(quad);


        return materialIndex;

}
