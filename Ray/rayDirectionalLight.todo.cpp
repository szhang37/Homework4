#include <math.h>
#include <GL/glut.h>
#include "rayDirectionalLight.h"
#include "rayScene.h"

////////////////////////
//  Ray-tracing stuff //
////////////////////////
Point3D RayDirectionalLight::getDiffuse(Point3D cameraPosition,RayIntersectionInfo& iInfo){

	Point3D L = -direction;
	Point3D Il = color;
	Point3D Kd = iInfo.material->diffuse;
	Point3D N = iInfo.normal;


	Point3D Id = Kd * (Il * (N.dot(L)));
	if(Id[0]>1) Id[0] = 1;
	if(Id[0]<0) Id[0] = 0;

	if(Id[1]>1) Id[1] = 1;
	if(Id[1]<0) Id[1] = 0;

	if(Id[2]>1) Id[2] = 1;
	if(Id[2]<0) Id[2] = 0;
    //printf("directional light:%f,%f,%f\n",Id[0],Id[1],Id[2]);
	return Id;
}
Point3D RayDirectionalLight::getSpecular(Point3D cameraPosition,RayIntersectionInfo& iInfo){
	Point3D L = direction;
	Point3D Il = color;
	Point3D Ks = iInfo.material->specular;
	Point3D N = iInfo.normal;
	double n = iInfo.material->specularFallOff;

	if (L.dot(N) > 0)
	    return Point3D();

	Point3D V = (cameraPosition - iInfo.iCoordinate)/(cameraPosition - iInfo.iCoordinate).length();

	Point3D R = L - (N * (L.dot(N))* 2);
    R /= R.length();

    Point3D Id = Ks * (Il * pow(V.dot(R), n));
    if(Id[0]>1) Id[0] = 1;
    if(Id[0]<0) Id[0] = 0;

    if(Id[1]>1) Id[1] = 1;
    if(Id[1]<0) Id[1] = 0;

    if(Id[2]>1) Id[2] = 1;
    if(Id[2]<0) Id[2] = 0;
     //printf("directional light:%f,%f,%f\n",Id[0],Id[1],Id[2]);
    return Id;

}
int RayDirectionalLight::isInShadow(RayIntersectionInfo& iInfo,RayShape* shape,int& isectCount){
	Point3D P = iInfo.iCoordinate;
	Point3D L = -direction;
	Ray3D temp = Ray3D(P,L);
	Ray3D tempRay = Ray3D(temp(.00001),L);
	RayIntersectionInfo info;
	double d = shape->intersect(tempRay, info, -1);
	//printf("hit distance:%f,%f,%f,%f\n",d,info.normal.p[0],info.normal.p[1],info.normal.p[2]);
	if (L.dot(info.normal) >= 0)
		return 1;
	if (d > 0) {return 0;}
	 else return 1;

}
Point3D RayDirectionalLight::transparency(RayIntersectionInfo& iInfo,RayShape* shape,Point3D cLimit){
	Point3D trans = Point3D(1,1,1);

	Ray3D shadeRay = Ray3D(iInfo.iCoordinate, -direction);
	shadeRay.position = shadeRay(0.00001);

	RayIntersectionInfo info;
	Point3D Kt = Point3D();

	while (Kt[0] < cLimit[0] && Kt[1] < cLimit[1] && Kt[2] < cLimit[2]) {
	                double dis = shape->intersect(shadeRay, info, -1);
	                Point3D N = info.normal;

	                if (dis < 0 || -direction.dot(N) >= 0)

	                	return trans;

	                Kt = info.material->transparent;

	                shadeRay.position = info.iCoordinate;
	                shadeRay.position = shadeRay(0.00001);
	                cLimit /= Kt;

	                trans -= Kt;
	}
    if(trans[0]<0) trans[0] =0;
    if(trans[1]<0) trans[1] =0;
    if(trans[2]<0) trans[2] =0;
	return trans;
}

//////////////////
// OpenGL stuff //
//////////////////
void RayDirectionalLight::drawOpenGL(int index){

        GLfloat light_diffuse[] = { color[0], color[1], color[2], 0 };
        GLfloat light_specular[] = { color[0], color[1], color[2], 0 };
        GLfloat light_ambient[] = { 0.f, 0.f, 0.f, 1.0f };
        GLfloat light_position[] = { -direction[0], -direction[1], -direction[2], 0 };

        glLightfv(GL_LIGHT0 + index, GL_DIFFUSE, light_diffuse);

        glLightfv(GL_LIGHT0 + index, GL_SPECULAR, light_specular);

        glLightfv(GL_LIGHT0 + index, GL_AMBIENT, light_ambient);

        glLightfv(GL_LIGHT0 + index, GL_POSITION, light_position);

        glEnable(GL_LIGHT0 + index);

}
