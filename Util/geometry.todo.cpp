#include <stdlib.h>
#include <math.h>

#include <SVD/SVDFit.h>
#include <SVD/MatrixMNTC.h>

#include "geometry.h"


///////////////////////
// Ray-tracing stuff //
///////////////////////
double BoundingBox3D::intersect(const Ray3D& ray) const {
	double min, max, min1, max1, min2, max2;
	        Point3D P = ray.position;
	        Point3D L = ray.direction;

	        //if(P.p[0]>p[0].p[0]&&P.p[0]<p[1].p[0]
	        //   &&P.p[1]>p[0].p[1]&&P.p[0]<p[1].p[1]
	        //   &&P.p[2]>p[0].p[2]&&P.p[0]<p[1].p[2])
	        //return 0;

	        if (L.p[0] >= 0) {
	                min = (p[0].p[0] - P.p[0]) / L.p[0];
	                max = (p[1].p[0] - P.p[0]) / L.p[0];
	        } else {
	                min = (p[1].p[0] - P.p[0]) / L.p[0];
	                max = (p[0].p[0] - P.p[0]) / L.p[0];
	        }
	        if (L.p[1] >= 0) {
	                min1 = (p[0].p[1] - P.p[1]) / L.p[1];
	                max1 = (p[1].p[1] - P.p[1]) / L.p[1];
	        } else {
	                min1 = (p[1].p[1] - P.p[1]) / L.p[1];
	                max1 = (p[0].p[1] - P.p[1]) / L.p[1];
	        }

	        if ((min > max1) || (min1 > max)) {
	                return -1.0;
	        }
	        if (min1 > min) {
	                min = min1;
	        }
	        if (max1 < max) {
	                max = max1;
	        }

	        if (L.p[2] >= 0) {
	                min2 = (p[0].p[2] - P.p[2]) / L.p[2];
	                max2 = (p[1].p[2] - P.p[2]) / L.p[2];
	        } else {
	                min2 = (p[1].p[2] - P.p[2]) / L.p[2];
	                max2 = (p[0].p[2] - P.p[2]) / L.p[2];
	        }

	        if ((min > max2) || (min2 > max)) {
	                return -1;
	        }
	        if (min2 > min) {
	                min = min2;
	        }
	        if (max2 < max) {
	                max = max2;
	        }

	        return min;
}

/////////////////////
// Animation stuff //
/////////////////////
Matrix3D::Matrix3D(const Point3D& e){

	double xAngle = e.p[0];
        double yAngle = e.p[1];
        double zAngle = e.p[2];

        Matrix3D xRot = Matrix3D();
        Matrix3D yRot = Matrix3D();
        Matrix3D zRot = Matrix3D();

        xRot(0, 0) = 1;
        xRot(0, 1) = 0;
        xRot(0, 2) = 0;
        xRot(1, 0) = 0;
        xRot(1, 1) = cos(xAngle);
        xRot(1, 2) = sin(xAngle);
        xRot(2, 0) = 0;
        xRot(2, 1) = -sin(xAngle);
        xRot(2, 2) = cos(xAngle);

        yRot(0, 0) = cos(yAngle);
        yRot(0, 1) = 0;
        yRot(0, 2) = -sin(yAngle);
        yRot(1, 0) = 0;
        yRot(1, 1) = 1;
        yRot(1, 2) = 0;
        yRot(2, 0) = sin(yAngle);
        yRot(2, 1) = 0;
        yRot(2, 2) = cos(yAngle);

        zRot(0, 0) = cos(zAngle);
        zRot(0, 1) = sin(zAngle);
        zRot(0, 2) = 0;
        zRot(1, 0) = -sin(zAngle);
        zRot(1, 1) = cos(zAngle);
        zRot(1, 2) = 0;
        zRot(2, 0) = 0;
        zRot(2, 1) = 0;
        zRot(2, 2) = 1;

        (*this) = zRot * yRot * xRot;
}

Matrix3D::Matrix3D(const Quaternion& q){
        Quaternion quat = q;

        quat = quat.unit();
        double w = quat.real;
        double x = quat.imag[0];
        double y = quat.imag[1];
        double z = quat.imag[2];

        Matrix3D matrix = Matrix3D();

        matrix(0, 0) = 1 - (2 * y * y) - (2 * z * z);
        matrix(0, 1) = (2 * x * y) + (2 * z * w);
        matrix(0, 2) = (2 * x * z) - (2 * y * w);

        matrix(1, 0) = (2 * x * y) - (2 * z * w);
        matrix(1, 1) = 1 - (2 * x * x) - (2 * z * z);
        matrix(1, 2) = (2 * y * z) + (2 * x * w);

        matrix(2, 0) = (2 * x * z) + (2 * y * w);
        matrix(2, 1) = (2 * y * z) - (2 * x * w);
        matrix(2, 2) = 1 - (2 * x * x) - (2 * y * y);

        (*this) = matrix;
}
Matrix3D Matrix3D::closestRotation(void) const {
	Matrix3D matrix = (*this);

        Matrix3D x = Matrix3D();
        
        Matrix3D y = Matrix3D();

	Matrix3D z = Matrix3D();
	
        matrix.SVD(x, y, z);

        if (signbit(y(0,0))) {
                y(0, 0) = -1;
        } else {
                y(0, 0) = 1;
        }

        if (signbit(y(1,1))) {
                y(1, 1) = -1;
        } else {
                y(1, 1) = 1;
        }

        if (signbit(y(2,2))) {
                y(2, 2) = -1;
        } else {
                y(2, 2) = 1;
        }

        double lambda1 = y(0, 0);
        double lambda2 = y(1, 1);
        double lambda3 = y(2, 2);

        if (lambda1 * lambda2 * lambda3 != 1) {
                y(2, 2) = -y(2, 2);
        }

        return x * y * z;
}
/* While these Exp and Log implementations are the direct implementations of the Taylor series, the Log
 * function tends to run into convergence issues so we use the other ones:*/
Matrix3D Matrix3D::Exp(const Matrix3D& m,int iter){
	return m;
}
