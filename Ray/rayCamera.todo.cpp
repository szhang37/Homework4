
#include <GL/glut.h>
#include <math.h>
#include "rayCamera.h"



//////////////////
// OpenGL stuff //
//////////////////
void RayCamera::drawOpenGL(void){
  //set up the matrix mode
  glMatrixMode(GL_MODELVIEW);
  
  //clear the matrix
  glLoadIdentity();
  
  //set up the camera
  gluLookAt(position.p[0], 
	    position.p[1], 
	    position.p[2], 
	    position.p[0] + direction.p[0], 
	    position.p[1] + direction.p[1], 
	    position.p[2]+ direction.p[2], 
	    up.p[0], up.p[1], up.p[2]);

}
void RayCamera::rotateUp(Point3D center,float angle){

	angle /= 10;
	//direction = direction + right * tan(angle);
	//direction = direction.unit();
    Matrix3D matrix = Matrix3D();
	matrix.m[0][0]= cos(angle) + pow(right[0], 2)*(1- cos(angle));

	matrix.m[1][1]= cos(angle) + pow(right[1], 2)*(1- cos(angle));

	matrix.m[2][2]= cos(angle) + pow(right[2], 2)*(1- cos(angle));
	
	matrix.m[1][0] = right[0]*right[1]*(1-cos(angle))+ right[2]*sin(angle);

	matrix.m[2][0] = right[2]*right[0]*(1-cos(angle))- right[1]*sin(angle);

	matrix.m[0][1] = right[1]*right[0]*(1-cos(angle))- right[2]*sin(angle);

	matrix.m[0][2] = right[2]*right[0]*(1-cos(angle))+ right[1]*sin(angle);

	matrix.m[1][2] = right[2]*right[1]*(1-cos(angle))- right[0]*sin(angle);

	matrix.m[2][1] = right[2]*right[1]*(1-cos(angle))+ right[0]*sin(angle);

	direction = matrix*direction;
	direction = direction.unit();
	up = right ^ direction;
	up = up.unit();

}
void RayCamera::rotateRight(Point3D center,float angle){
	angle /= 10;

	//direction = direction + up * -tan(angle);
	//direction = direction.unit();
      	 
	//right = direction ^ up;
	//right = right.unit();

	Matrix3D matrix = Matrix3D();
	
	matrix.m[0][0]= cos(angle) + pow(up[0], 2)*(1- cos(angle));

	matrix.m[1][1]= cos(angle) + pow(up[1], 2)*(1- cos(angle));

	matrix.m[2][2]= cos(angle) + pow(up[2], 2)*(1- cos(angle));
	
	matrix.m[1][0] = up[0]*up[1]*(1-cos(angle))+ up[2]*sin(angle);

	matrix.m[2][0] = up[2]*up[0]*(1-cos(angle))- up[1]*sin(angle);

	matrix.m[0][1] = up[1]*up[0]*(1-cos(angle))- up[2]*sin(angle);

	matrix.m[0][2] = up[2]*up[0]*(1-cos(angle))+ up[1]*sin(angle);

	matrix.m[1][2] = up[2]*up[1]*(1-cos(angle))- up[0]*sin(angle);

	matrix.m[2][1] = up[2]*up[1]*(1-cos(angle))+ up[0]*sin(angle);

	direction = matrix*direction;
	direction = direction.unit();
	right = -up ^ direction;
	right = right.unit();

	
}
void RayCamera::moveForward(float dist){
}
void RayCamera::moveRight(float dist){
}
void RayCamera::moveUp(float dist){
}
