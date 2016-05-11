clear all
format short



%om x->0 så blir y = 1/3
%om x->inf så blir y = 0

finf = 0;
f0 = 1/3;

%Här tar vi intervallet 0.00001 -> B
B = 1000;
a2 = 0.00000001;
b2 = B;
n = 10;
t = 0;
disp('     h          t')
for i=1:n;
    h = (b2-a2)/n;
    x = a2+h*[0:n];
    y = funk1(x);
    t=h*(sum(y) -(y(n) + y(n+1))/2);
    n=2*n;
    %h=h/2;
    plot(x,y)
    disp([h t])
end

b3 = 12312312123123123123;
a3 = B;
n = 10
for i=1:n;
    h = (b3-a3)/n;
    x = a3+h*[0:n];
    y = funk1(x);
    t=h*(sum(y) -(y(n) + y(n+1))/2);
    n=2*n;
    %h=h/2;
    plot(x,y)
    
end
t = t




