format short
x = [4 9 3]'; %Vi multiplicerar 9 med 3
y = [9 6 4]';%Vi multiplicerar 6 med 3
k = [1 0 0;
    0 3 0;
    0 0 1];
X = 5;
Y = 5;
R = 100;
v = [0 0 0]';
c = [X Y R]';
t = 1;
it = 0;
maxit = 100;
while norm(t) > 1e-5 & it<maxit;
    X = c(1); Y = c(2); R = c(3);
    f = k*func7(x, y, X, Y , R);
    J = k*[-2.*(x - X) -2.*(y- Y) 2.*(v-R)];
    t = J \f;
    c = c-t;
    it = it+1;
end
if it<maxit;
    X = c(1); Y = c(2); R = c(3);
    disp('     X        Y           R')
    disp([X Y R])
else
    disp('Ingen konv')
    X = [], Y = [], R = []
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xx = [x; 6; 7];
yy = [y; 7; 7];
A = [xx.^0 xx yy];
B = [xx.^2 yy.^2];
b = B * [1 1]';
cc = A\b;

X = 5; Y = 5; R = 100;
c = [X Y R]';
kk = [1 0 0 0 0;
    0 3 0 0 0;
    0 0 1 0 0;
    0 0 0 1 0;
    0 0 0 0 1];
vv = [0 0 0 0 0]';
t = 1;
it = 0;
maxit = 100;
while norm(t) > 1e-5 & it<maxit;
    X = c(1); Y = c(2); R = c(3);
    f = kk*func7(xx, yy, X, Y , R);
    J = kk*[-2.*(xx - X) -2.*(yy - Y) 2.*(vv-R)];
    t = J \f;
    c = c-t;
    it = it+1;
end
if it<maxit;
    X = c(1); Y = c(2); R = c(3);
    disp('     X        Y           R')
    disp([X Y R])
else
    disp('Ingen konv')
    X = [], Y = [], R = []
end


vinkel = 0:0.01:2*pi;
xp = R * cos(vinkel) + X;
yp = R * sin(vinkel)+ Y;
hold on
subplot(2,1 ,1)
plot(xx, yy, 'o', xp, yp)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%allt är samma som ovan förutom kk som har en 9a istället för 3a
xx = [x; 6; 7];
yy = [y; 7; 7];
A = [xx.^0 xx yy];
B = [xx.^2 yy.^2];
b = B * [1 1]';
cc = A\b;

X = 5; Y = 5; R = 100;
c = [X Y R]';
kk = [1 0 0 0 0;
    0 3*3 0 0 0; %här har vi tagit 9 istället för 3
    0 0 1 0 0;
    0 0 0 1 0;
    0 0 0 0 1];
vv = [0 0 0 0 0]';
t = 1;
it = 0;
maxit = 100;
while norm(t) > 1e-5 & it<maxit;
    X = c(1); Y = c(2); R = c(3);
    f = kk*func7(xx, yy, X, Y , R);
    J = kk*[-2.*(xx - X) -2.*(yy - Y) 2.*(vv-R)];
    t = J \f;
    c = c-t;
    it = it+1;
end
if it<maxit;
    X = c(1); Y = c(2); R = c(3);
    disp('     X        Y           R')
    disp([X Y R])
else
    disp('Ingen konv')
    X = [], Y = [], R = []
end


vinkel = 0:0.01:2*pi;
xp = R * cos(vinkel) + X;
yp = R * sin(vinkel)+ Y;
hold on
subplot(2,1,2)
plot(xx,yy,'*', xp,yp)







%{
a) medelpunkten blir (5.6428, 6.0714) R blir 3.3579
b) svaren liknar de i labb 1.
c) svaret blir samma som innan
d) medelpunkten blir (5.8355, 5.6225) och R blir 3.0639
e) 

%}
