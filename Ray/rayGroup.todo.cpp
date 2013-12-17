#include <stdlib.h>
#include <GL/glut.h>
#include "rayGroup.h"

////////////////////////
//  Ray-tracing stuff //
////////////////////////
double RayGroup::intersect(Ray3D ray,RayIntersectionInfo& iInfo,double mx){
	return -1;
}

BoundingBox3D RayGroup::setBoundingBox(void){
	Point3D* pList;
	BoundingBox3D tBBox;
	pList=new Point3D[sNum*2];
	for(int i=0;i<sNum;i++){
		tBBox=shapes[i]->setBoundingBox();
		pList[2*i  ]=tBBox.p[0];
		pList[2*i+1]=tBBox.p[1];
	}
	tBBox=BoundingBox3D(pList,sNum*2);

	delete[] pList;
	bBox=tBBox.transform(getMatrix());
	return bBox;
}

int StaticRayGroup::set(void){
	return 1;
}
//////////////////
// OpenGL stuff //
//////////////////
int RayGroup::getOpenGLCallList(void){


        
	    Matrix4D matrix = getMatrix();

		float M[16];

		int i,j;

		for(i=0 ; i<4 ;i++)
			for(j=0; j<4 ;j++)
			{
				M[4*i + j] = matrix.m[i][j];
			}
		
	    //generate the new call list

	    GLuint newList= glGenLists (1);
	
        //get new list
		glNewList(newList, GL_COMPILE);

		glPushMatrix();
		
		glMultMatrixf(M);

		for (i = 0; i < sNum; i++) {

					shapes[i]->drawOpenGL(-1);
		}
		glPopMatrix();
        
        glEndList();

        return newList;

}

int RayGroup::drawOpenGL(int materialIndex){

  
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable( GL_BLEND );

    Matrix4D matrix = getMatrix();

	float M[16];

	int i,j;

	for(i=0 ; i<4 ;i++)
		for(j=0; j<4 ;j++)
		{
			M[4*i + j] = matrix.m[i][j];
		}
	
	if (openGLCallListID == 0) {
		//printf("CAll list ID is zero! \n");
                int i = 0;
                for (i = 0; i < sNum; i++) {

					glPushMatrix();
					
					glMultMatrixf(M);

					shapes[i]->drawOpenGL(materialIndex);

					glPopMatrix();
                }

	 }
	else{
		//printf("CAll list ID is not zero! \n");
		 glCallList(openGLCallListID);
        }

        return materialIndex;
}

/////////////////////
// Animation Stuff //
/////////////////////
Matrix4D ParametrizedEulerAnglesAndTranslation::getMatrix(void) {
  
  Point3D angles = value->eulerAngles;
  Point3D translate = value->translate;

  Matrix3D rotation = Matrix3D(angles);

  return Matrix4D(rotation, translate);

}
Matrix4D ParametrizedClosestRotationAndTranslation::getMatrix(void) {

  Matrix3D notRotation = value->rotation;
  Point3D translate = value->translate;

  Matrix3D closestRotation = notRotation.closestRotation();

  return Matrix4D(closestRotation, translate);

}
Matrix4D ParametrizedRotationLogarithmAndTranslation::getMatrix(void) {
  Matrix3D m = value->skewSymmetric;
  Point3D translate = value->translate;

  Matrix3D exponential = Matrix3D::Exp(m, 100);

  return Matrix4D(exponential, translate);

}
Matrix4D ParametrizedQuaternionAndTranslation::getMatrix(void) {

  Quaternion q = value->quaternion;
  Point3D translate = value->translate;

  Matrix3D closestRotation = Matrix3D(q);

  return Matrix4D(closestRotation, translate);

}
