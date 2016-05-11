function C = func5(x, h)
T0 = 320;
TL = 450;
L = 3.1;

k = 3 + x./8;
kp = (x.^0)/8;
noll = [zeros(length(x), 1)]';

a = (-2*k)/h^2;
b = (kp/(2*h) + k/(h^2));
c =(-kp/(2*h)+ k/(h^2));

A = [a b noll;
    c a b;
    noll c a];
a1 = -275.*exp(-(x-L/2).^2) - T0*(-kp/(2*h) + k/(h.^2));
b1 = -275.*exp(-(x-L/2).^2);
c1 = -275.*exp(-(x-L/2).^2) - TL*(kp/(2*h) + k/(h.^2));
B = [a1; 
    b1; 
    c1];


C = sparse(A\B);



end