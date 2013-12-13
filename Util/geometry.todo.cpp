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
	(*this)=Matrix3D();
}

Matrix3D::Matrix3D(const Quaternion& q){
	(*this)=Matrix3D();
}
Matrix3D Matrix3D::closestRotation(void) const {
	return (*this);
}
/* While these Exp and Log implementations are the direct implementations of the Taylor series, the Log
 * function tends to run into convergence issues so we use the other ones:*/
Matrix3D Matrix3D::Exp(const Matrix3D& m,int iter){
	return m;
}
