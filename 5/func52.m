close all
clear all
L = 3.1;

x0 = 0;
a = x0;
b = L;
T0 = 320;
TL = 450;
alfa = T0;
beta = TL;


h = 0.0001;
jump = 4;
for k=1:3;
    h = h/2;
    
    jump = 2*jump;
    N = (b-a)/h;
    g = h;
    n = N-1;
    x = a+h*[1:n]';
    s = -275*exp(-((x-L/2)).^2);
    hej = (-6/(h.^2) - (2*x)/(8*h.^2));
    hejsan = (1/(h*16) + 3/(h.^2) + x/(8*h.^2));
    tja =(-1/(h*16) + 3/(h.^2) + x/(8*h.^2));
    
    z = zeros(size(x)); z(1) = alfa*tja(1); z(n) = beta*hejsan(n);
    
    A = spdiags([tja hej hejsan], [-1:1], n,n);
    B= s-z; y = A\B;
    
    P = round(2.9/h);
    YP(k) = y(P);
    
    %Y(k,:) = YP;
    Y(k,:) = y(jump:jump:N-jump)';
end
plot([a;x;b], [alfa;y;beta]), grid on

delta=diff(Y), kvoter = delta(1,:)./delta(2,:)

maxkvot = max(kvoter), minkvot = min(kvoter)
maxfel = max(abs(delta(2,:)))/3
%{
YP, deltaYP = diff(YP)
kvotYP = deltaYP(1)/deltaYP(2)
%}

format long,
%ykorr = Y(:,2:3) + delta/3;
%trunkskatt = abs(diff(ykorr')');
%trunkfel = max(trunkskatt)
%trunkskatt = abs(diff(ykorr')');



%456.5428435939010 är T vid x = 2.9.
%Felet ska halveras, vilket de gör.
%Om man vill få värdet vid 2.48 kan man använda 0.02.
%För då har man en större steglängd. Och den lutar brantare.








