d1: drift, l=1*m;
bm: rbend, l=1*m, B=5*T;

l1: line=(d1,bm);
use, l1;

beam, particle="millicharged",
      kineticEnergy=10*GeV;

option, enableMillicharge=1,
        millichargeName="millicharged",
        millichargeMass={{ MASS }}*GeV,
        millichargeCharge={{ CHARGE }},
        millichargeID=411000;

sampler: samplerplacement, z=52*m, aper1=10*m, aper2=10*m, shape="rectangular", partID={411000};