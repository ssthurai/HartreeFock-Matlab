#Based on the tutorial by Prof. James Johns's, Minnesota University

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Build_Electron_Repulsion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ss <ss@ss>
## Created: 2020-07-10

function gabcd = Build_Electron_Repulsion(basis)
nbasis=size(basis,2);
gabcd=zeros(nbasis,nbasis,nbasis,nbasis)
for a=1:nbasis
  for na=1:basis{a}.n
    aa=basis{a}.g(na).alpha;
    for b=1:basis
      for nb=basis{b}.n;
        ab=basis{b}.g(nb);
        p=aa+ab;
        Px=(basis{a}.g(na).x0*aa + basis{b}.g(nb).x0*p;
      


endfunction
