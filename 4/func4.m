function yprim = func4(x,y)
%y(1) = y
%y(2) = y'
%y(1)' = y(2)
%y(2)' = -pi.*y(1).*exp(x./4)*(2.*y(2).*sin(pi.*x)+pi.*y(1).*cos(pi.*x)) +
%y(1)/16
yprim = [y(2) 
    -pi.*y(1).*exp(x./4)*(2.*y(2).*sin(pi.*x)+ pi.*y(1).*cos(pi.*x)) + y(1)./16
    pi.*y(1).^2];
end
    