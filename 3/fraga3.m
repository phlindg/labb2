clear all
format long
a = 0;
L = 2.4;
b = L; 
n = 5;
h = (b-a)/n;
T0 = (func3(a) + func3(b))/2;
disp('T   Ttak    T2tak   kvot   deltaT2tak')
for i=1:n;
    x = a + h.*[1:n-1];
    T(i) = h*(T0 + sum(func3(x)));
    n = 2*n;
    h = h/2;
end
T
delta=diff(T)
kvot = delta(1)/delta(2)
Ttak = T(2:end) + delta/3
fellskattTtak = diff(Ttak)
%7 siffror tillförlitliga
%volym blir  0.622104 +- 0.0000008

Q = quad(@func3, a, b)
x = x';
f = func3(x);

fi = 0:2*pi/78:2*pi;

X = x*ones(size(fi));
size(cos(fi));
size(cos(f));
Y = f*cos(fi);
Z= f*sin(fi);
surf(X,Y,Z)

