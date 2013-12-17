/////////////////////
// Animation stuff //
/////////////////////
template <class Vector>
void ParameterSamples<Vector>::setCurrentValue(double t,int type){


        Vector pk;
        Vector pkPlus1;
        Vector pkMinus1;
        Vector pkPlus2;
                
        Vector P0;
        Vector P1;
        Vector P0prime;
        Vector P1prime;
                
        double u, u2, u3, s;
        
        double C0, C1, C2, C3;
        double B03,B13,B23,B33;
                
        Vector polynomial;

	switch (type){
	       
	       int currentStep;
               double diff;
               int nextStep;
               int previousStep;
               int nextNextStep;
	       case LINEAR:
					     
			currentStep = (int) (t*count);
                        nextStep = currentStep + 1;
                        diff = (t*count) - currentStep;
                        
                        if(nextStep >= count){
                                nextStep = currentStep;
                        }
                        currentValue = samples[currentStep] * (1-diff) + samples[nextStep] * diff;
			break;
		case CATMULL_ROM:
			currentStep = (int) (t*count);
                        nextStep = currentStep + 1;
                        nextNextStep = nextStep + 1;
                        previousStep = currentStep - 1;
                        diff = (t*count) - currentStep;
                        s = (1-diff);
                        
                        if(nextStep >= count){
                                nextStep = currentStep;
                                nextNextStep = currentStep;
                        }
                        else if(nextNextStep >= count){
                                nextNextStep = nextStep;
                        }
                        
                        if(previousStep < 0){
                                previousStep = currentStep;
                        }

                        
                        pk = samples[currentStep];
                        pkPlus1 = samples[nextStep];
                        pkMinus1 = samples[previousStep];
                        pkPlus2 = samples[nextNextStep];        
                        
                        P0 = pk;
                        P1 = pkPlus1;
                        P0prime = (pkPlus1 - pkMinus1)*(0.5);
                        P1prime = (pkPlus2 - pk)*(0.5);
                        
                        //Polynomial
                        u = diff;
                        u2 = diff*diff;
                        u3 = diff*diff*diff;
                        
                        C0 = -s*u3 + 2*s*u2 - s*u;
                        C1 = (2-s)*u3 + (s-3)*u2 + 1;
                        C2 = (s-2)*u3 + (3-2*s)*u2 + s*u;
                        C3 = s*u3 - s*u2;
                        
                        polynomial = pkMinus1*C0 + pk*C1 + pkPlus1*C2 + pkPlus2*C3;                        
                        currentValue = polynomial;

			break;
		case UNIFORM_CUBIC_B_SPLINE:
			currentStep = (int) (t*count);
                        nextStep = currentStep + 1;
                        nextNextStep = nextStep + 1;
                        previousStep = currentStep - 1;
                        diff = (t*count) - currentStep;
                        
                        if(previousStep < 0){
                                previousStep = count-1;
                        }
                        nextStep = nextStep % count;
                        nextNextStep = nextNextStep % count;
                        

                        
                        pk = samples[currentStep];
                        pkPlus1 = samples[nextStep];
                        pkMinus1 = samples[previousStep];
                        pkPlus2 = samples[nextNextStep];        
                        
 
                        
                        u = diff;
                        u2 = diff*diff;
                        u3 = diff*diff*diff;
                        
                        B03 = (1-u)*(1-u)*(1-u) * (1.0/6.0);
                        B13 = (3*u3 - 6*u2 + 4) * (1.0/6.0);
                        B23 = (-3*u3 + 3*u2 + 3*u + 1) * (1.0 / 6.0);
                        B33 = u3 * (1.0/6.0);
                        
                        polynomial = pkMinus1 * B03 + pk*B13 + pkPlus1 * B23 + pkPlus2 * B33;
                        
                        currentValue = polynomial;
			break;
	};
}
