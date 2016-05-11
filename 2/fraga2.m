%{
b = (6-pi)/0.003;
a = (-pi)/0.003;
format long

y1 = (-0.3*exp(-b.^2))./(2.*b)
y2 = (-0.3*exp(-a.^2))./(2.*a)
%}

a = 0;
b = 2;

x = 0:0.01:6;
y = funk2(x);
plot(x,y)

f = @(x) funk2(x);

tol = 1e-9;
a1 = 0;
b1 = 3.13;
q1 = quad('funk2', a1 ,b1, tol)
t1 = integral(f, a1, b1, 'AbsTol', tol); 


a2 = 3.13;
b2 = 3.15;
q2 = quad('funk2', a2 ,b2, tol)
t2 = integral(f, a2, b2, 'AbsTol', tol); 


a3 = 3.15;
b3 = 6;
q3 = quad('funk2', a3 ,b3, tol)
t3 = integral(f, a3, b3, 'AbsTol', tol);

qtot = q1 + q2 + q3
inttot = t1+t2+t3








