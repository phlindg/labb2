x = 0;
y2 = tstsfunc(x);
L = 2.4;
a = 0;
b = L;
h = 0.1;

n = (b-a)/h;
x = a + h*[0:n];
T0 = (tstsfunc(a) + tstsfunc(b))/2; 
T1 = h*(T0 + sum(tstsfunc(x)))
n = 2*n;
h = h/2;
x = a + h.*[0:n];
T2 = h*(T0+sum(tstsfunc(x)))
Ttak = T2 + (T2 - T1)/3


