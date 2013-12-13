#include <math.h>
#include <GL/glut.h>
#include "rayScene.h"
#include "rayBox.h"

////////////////////////
//  Ray-tracing stuff //
////////////////////////
double RayBox::intersect(Ray3D ray,RayIntersectionInfo& iInfo,double mx){
	return -1;
}
BoundingBox3D RayBox::setBoundingBox(void){
	bBox=BoundingBox3D(center-(length/2),center+(length/2));
	return bBox;
}

//////////////////
// OpenGL stuff //
//////////////////
int RayBox::drawOpenGL(int materialIndex){

	if (material->index != materialIndex) {
		material->drawOpenGL();
	}

	glDisable( GL_CULL_FACE);

	Point3D half = length / 2.f;
	Point3D A = center + (half * Point3D(-1, -1, -1));
	Point3D B = center + (half * Point3D(-1, -1, 1));

	Point3D C = center + (half * Point3D(1, -1, -1));
	Point3D D = center + (half * Point3D(1, -1, 1));

	Point3D E = center + (half * Point3D(1, 1, -1));
	Point3D F = center + (half * Point3D(1, 1, 1));

	Point3D G = center + (half * Point3D(-1, 1, -1));
	Point3D H = center + (half * Point3D(-1, 1, 1));

	Point3D up = (B - A).unit();

	Point3D down = (A - B).unit();

	Point3D left = (B - D).unit();

	Point3D right = (D - B).unit();

	Point3D front = (B - H).unit();

	Point3D back = (H - B).unit();

	right = -right;
	up = -up;

	glBegin(GL_QUADS);

	//glTexCoord2f(A.p[0], A.p[1]);
	glNormal3d(front[0], front[1], front[2]);
	glVertex3d(A[0], A[1], A[2]);

	//glTexCoord2f(B.p[0], B.p[1]);
	glNormal3d(front[0], front[1], front[2]);
	glVertex3d(B[0], B[1], B[2]);

	//glTexCoord2f(D.p[0], D.p[1]);
	glNormal3d(front[0], front[1], front[2]);
	glVertex3d(D[0], D[1], D[2]);

	//glTexCoord2f(C.p[0], C.p[1]);
	glNormal3d(front[0], front[1], front[2]);
	glVertex3d(C[0], C[1], C[2]);

	//glTexCoord2f(C.p[0], C.p[1]);
	glNormal3d(right[0], right[1], right[2]);
	glVertex3d(C[0], C[1], C[2]);

	//glTexCoord2f(D.p[0], D.p[1]);
	glNormal3d(right[0], right[1], right[2]);
	glVertex3d(D[0], D[1], D[2]);

	//glTexCoord2f(F.p[0], F.p[1]);
	glNormal3d(right[0], right[1], right[2]);
	glVertex3d(F[0], F[1], F[2]);

	//glTexCoord2f(E.p[0], E.p[1]);
	glNormal3d(right[0], right[1], right[2]);
	glVertex3d(E[0], E[1], E[2]);

	//glTexCoord2f(E.p[0], E.p[1]);
	glNormal3d(back[0], back[1], back[2]);
	glVertex3d(E[0], E[1], E[2]);

	//glTexCoord2f(F.p[0], F.p[1]);
	glNormal3d(back[0], back[1], back[2]);
	glVertex3d(F[0], F[1], F[2]);

	//glTexCoord2f(H.p[0], H.p[1]);
	glNormal3d(back[0], back[1], back[2]);
	glVertex3d(H[0], H[1], H[2]);

	//glTexCoord2f(G.p[0], G.p[1]);
	glNormal3d(back[0], back[1], back[2]);
	glVertex3d(G[0], G[1], G[2]);

	//glTexCoord2f(G.p[0], G.p[1]);
	glNormal3d(left[0], left[1], left[2]);
	glVertex3d(G[0], G[1], G[2]);

	//glTexCoord2f(H.p[0], H.p[1]);
	glNormal3d(left[0], left[1], left[2]);
	glVertex3d(H[0], H[1], H[2]);

	//glTexCoord2f(B.p[0], B.p[1]);
	glNormal3d(left[0], left[1], left[2]);
	glVertex3d(B[0], B[1], B[2]);

	//glTexCoord2f(A.p[0], A.p[1]);
	glNormal3d(left[0], left[1], left[2]);
	glVertex3d(A[0], A[1], A[2]);

	//glTexCoord2f(B.p[0], B.p[1]);
	glNormal3d(up[0], up[1], up[2]);
	glVertex3d(B[0], B[1], B[2]);

	//glTexCoord2f(H.p[0], H.p[1]);
	glNormal3d(up[0], up[1], up[2]);
	glVertex3d(H[0], H[1], H[2]);

	//glTexCoord2f(F.p[0], F.p[1]);
	glNormal3d(up[0], up[1], up[2]);
	glVertex3d(F[0], F[1], F[2]);

	//glTexCoord2f(D.p[0], D.p[1]);
	glNormal3d(up[0], up[1], up[2]);
	glVertex3d(D[0], D[1], D[2]);

	//glTexCoord2f(G.p[0], G.p[1]);
	glNormal3d(down[0], down[1], down[2]);
	glVertex3d(G[0], G[1], G[2]);

	//glTexCoord2f(A.p[0], A.p[1]);
	glNormal3d(down[0], down[1], down[2]);
	glVertex3d(A[0], A[1], A[2]);

	//glTexCoord2f(C.p[0], C.p[1]);
	glNormal3d(down[0], down[1], down[2]);
	glVertex3d(C[0], C[1], C[2]);

	//glTexCoord2f(E .p[0], E.p[1]);
	glNormal3d(down[0], down[1], down[2]);
	glVertex3d(E[0], E[1], E[2]);

	glEnd();

	glEnable(GL_CULL_FACE);

	return material->index;
}
