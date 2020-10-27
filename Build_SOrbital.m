%Based on the tutorial by Prof. James Johns's, Minnesota University
function orbital=Build_SOrbital(Ax,Ay,Az,alpha):
%Here we are using tmp. for strucutred

    tmp.x0=Ax;
    tmp.y0=Ay;
    tmp.z0=Az;

    tmp.alpha=alpha;
    %following equation gets the normalization constant by using standard integral solution
    tmp.N=(2*alpha/pi)^0.75;
    orbital=tmp;
