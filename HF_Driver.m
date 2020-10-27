%Based on the tutorial by Prof. James Johns's, Minnesota University
%https://www.youtube.com/watch?v=yjVn6e-F_b8&list=PL1c_abw8OtQ_U3fuvA8UEB8Kq4r2lIsb3&index=1

%We need to supply Z-nucelar charge of each atom
%and therefore number of electrons for a neutral molecule)
%Then we give the atom list; List of [x,y,z] coordinates for each atom

function Min_Energy=HF_Driver(Z,AL)
%Here HF_Driver drives the HF calculaiton for a user supplied vector of 
%atomic numbers and a M x3 array (AL) of atomic coordinates

%Now Build nuclear repulsion (taks atomic numbers and coordinates)
Nuclear_Repulsion = Build_Nuclear_Repulsion(Z,AL)

%Build basis set. (N total number of electrons)
[basis,N] = Build_Basis(Z,AL);
%above, bracket above denotes that we are going to return multiple numbers

%Build overlap matrix - S is commonly used for overlap matrix
S=Build_Overlap(basis);

%Build kinetic energy from basis function
T=Build_Kinetic(basis);

%Build nuclear attraction
Nuclear_Attraction=Build_Nuclear_Attraction(Z, AL, basis);

%Build four-D array of electron-electorn  
%Basis functions...
Gabcd=Build_Gabcd(basis)






