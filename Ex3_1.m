clc; clear variables; close all;

g = @(x,y) x.^2 + y.^2;
f = @(x,y) x.^2 + 1;


x = linspace(-10,10);
y = linspace(-10,10);
[X,Y] = meshgrid(x,y);

figure()
surf(x,y,g(X,Y))

figure()
contour(x,y,g(X,Y),100);

x1 = linspace(-3,3);
figure()
contour(x,y,g(X,Y),500);
hold on
plot(x1,f(x1));

%contour(x,y, f(X,Y),100,'k-')x
%colormap(gray)
% figure()
% contour(x,y,g(X,Y))
