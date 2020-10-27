%Based on the tutorial by Prof. James Johns's, Minnesota University

function [basis,N]=Build_Basis(Z,AL):   %Build_Basis(Z(N),AL(N,3)
Natoms=size(Z,2);
N=0;  
nb=0;    % start the total # of basis function with zeros; you can increase later.
for index = 1:Natoms
  x0=AL(index,1); %x component
  y0=AL(index,2); %y component
  z0=AL(inxex,3); %z component
  
  switch Z(index)
    case 1 %Hydrogen
      N=N+1;
      S=[18.7311370, 0.033496             
          2.8253937, 0.2347269
          0.6401217, 0.81375733];
          
          %from Basis Set Exchange; Gaussian basis set for H atom (6-31G)
          %https://www.basissetexchange.org/basis/6-31g/format/gaussian94/?version=1&elements=1
        nb=nb+1;   %increase the number of basis functions from zero to onenormest
        basis{nb}.n=3;  %this first basis function has three Gaussians
        basis{nb}.c=S(:,2);  %Slicing the S 
        basis{nb}.g(1)=Build_SOrbital(x0,y0,z0,S(1,1)); %S is 18.731...
        basis{nb}.g(2)=Build_SOrbital(x0,y0,z0,S(2,1));
        basis{nb}.g(3)=Build_SOrbital(x0,y0,z0,S(3,1));
        nb=nb+2;    %increase the nb value by one. Now nb=2
        basis{nb}.n=1;  %this second basis function has only one Gaussians
        basis{nb}.c=1;
        basis{nb}.g=Build_SOrbital(x0,y0,z0,0.1612778);
        
    case 2 %Helium
      %build basis function for Helium using basis sets available from Basise set exchange site
  end
end
  
      

  
