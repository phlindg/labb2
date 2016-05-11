clear all
format long



%om x->0 så blir y = 1/3
%om x->inf så blir y = 0

finf = 0;
f0 = 1/3;
x = 0:1000;
y = funk1(x);
subplot(3,1 ,1)
plot(x,y)

m = 20
%Här tar vi intervallet 0.00001 -> B
subplot(3,1 ,2)
B = 10;
a2 = 0.0000001;
b2 = B;
n = m;
disp('     h          t1')
for i=1:n;
    h = (b2-a2)/n;
    x = a2+h*[0:n];
    y = funk1(x);
    t1=h*(sum(y) -(y(1) + y(n+1))/2);
    n=2*n;
    %h=h/2;
    plot(x,y)
    disp([t1])
end

subplot(3,1,3)
b3 = 1e6;
a3 = B;
n = m;
disp('     h          t2')
for i=1:n;
    h = (b3-a3)/n;
    x = a3+h*[0:n];
    y = funk1(x);
    t2=h*(sum(y) -(y(1) + y(n+1))/2);
    n=2*n;
    %h=h/2;
    plot(x,y)
    disp([t2])
    
end

%{
b4 =1e7;
a4 = b3;
n = 7;
disp('     h          t3')
for i=1:n;
    h = (b4-a4)/n;
    x = a4+h*[0:n];
    y = funk1(x);
    t3=h*(sum(y) -(y(1) + y(n+1))/2);
    n=2*n;
    %h=h/2;
    plot(x,y)
    disp([t3])
    
end
%}
tot = t1+ t2
fel = abs(0.590818 - tot) %värdet fick vi från wolfram alpha

%{ 
a) Vi använde oss av svanskapning. Det gör vi för att integralen annars
blir odefinierad. Förbehandlingen gör att det blir möjligt att beräkna
intgralen. 
b) Vi får integralen till 0.590818 och feltermen blir t3 = 9.99654 * 10^-8
%}

