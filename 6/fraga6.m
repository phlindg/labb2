clear all
close all
format long
x = -2:0.1:4;
y = func6(x);

hold on
ezplot('func62')
ezplot('func6')

%a) De har 3 skärningspunkter (0.25, 1.6, 3.2)
%b) x blir 1.5 och y blir -0.9375 
%c) med 5 iterationer blir x = 1.554958 och y = -0.594789


x10 = 1.6;
y20 = 3.2;
x = [x10 y20]';
t = 1;
it = 0;
maxit = 10;
while norm(t) > 1e-6 & it<maxit;
    f = [func6(x(1)) 
        func62(x(1), x(2))];
    J = [(30.*x(1).^2 - 100.*x(1) + 60)  (0)
        ((x(1) - 3)./8) ((x(2) - 5)./18)];
    t = J \ f
    x=x-t
    it = it + 1;
end
if it<maxit;
    losn = x
    it
else
    disp('Ingen konvergens')
    losn=[];
end
    

