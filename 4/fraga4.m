clear all
format long
%-pi.*y(1).*exp(x./4)*(2.*y(2).*sin(pi.*x)+pi.*y(1).*cos(pi.*x)) + y(1)/16
y10 = 1/2;
y20 = -1/8;
y30 = 0;
x0 = 0;
xslut = 2.4;
relTol = 1e-8;

[X,Y, Z] = ode45(@func4, [0 2.4], [1/2 -1/8 0]', relTol);
subplot(3, 1, 1)
plot(X, Y)
legend('y1','y2','y3')
subplot(3,1, 2)
plot(X,Y(:,1))
legend('sammanlagd')

subplot(3,1,3)
[X,Y,Z] = ode45(@func4, [0 2.4], [1/2 -1/8 0]')

plot(X,Y)
legend('Med standardtolerans')



y = Y(end,1)
z = Z(end,1)
x = X(end)


