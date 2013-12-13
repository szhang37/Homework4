#include <math.h>
#include <GL/glut.h>
#include "rayScene.h"
#include "rayCone.h"


////////////////////////
//  Ray-tracing stuff //
////////////////////////
double RayCone::intersect(Ray3D ray,RayIntersectionInfo& iInfo,double mx){
	return -1;
}

BoundingBox3D RayCone::setBoundingBox(void){
	Point3D p;
	p=Point3D(radius,height/2,radius);
	bBox=BoundingBox3D(center+p,center-p);
	return bBox;
}

//////////////////
// OpenGL stuff //
//////////////////
int RayCone::drawOpenGL(int materialIndex){

	if (material->index != materialIndex) {

		material->drawOpenGL();
	}

	GLUquadric *quad;
	GLdouble rad = radius;
	GLdouble h = height;
	//glBegin(GL_);
	//Point3D tex = material->tex;
	quad = gluNewQuadric();

	gluQuadricNormals(quad, GLU_SMOOTH);
	gluQuadricDrawStyle(quad, GLU_FILL);
	gluQuadricOrientation(quad, GLU_OUTSIDE);    
	gluQuadricTexture(quad, GL_TRUE);
	//glTexCoord2f(tex.p[0], tex.p[1]);

	//glPushMatrix();
	//
	glTranslatef(center.p[0],center.p[1],center.p[2]-h/2);
	glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
	
    
	gluCylinder(quad,0.0f,rad,h,100,100);
       
	//glTranslatef(center.p[0],center.p[1],center.p[2]);	

	glRotatef(180.0f, 0.0f, 1.0f, 0.0f);
	
	gluDisk(quad, 0.0f, 0.0f, 100, 1);

	glRotatef(180.0f, 1.0f, 0.0f, 0.0f);
	
   	glTranslatef(0.0f , 0.0f , h);

	
   	gluDisk(quad, 0.0f, rad, 100, 1);

	glTranslatef(0.0f , 0.0f , -h);
	//	glPopMatrix();
	//	glRotatef(90, 1,0,0);


	gluDeleteQuadric(quad);
	
}
