clc; clear variables; close all;

g = @(x,y) y.*x.^2;
%f = @(x,y) x.^2 + y.^2 -1 ;


x = linspace(-10,10);
y = linspace(-10,10);
[X,Y] = meshgrid(x,y);

figure()
contourf(x,y,g(X,Y),100)
colormap default
hold on

%contour(x,y, f(X,Y),100,'k-')
%colormap(gray)
% figure()
% contour(x,y,g(X,Y))

n = 100;

angle = 0:2*pi/n:2*pi;            % vector of angles at which points are drawn
R = 5;                            % Unit radius

x = R*cos(angle);  y = R*sin(angle);   % Coordinates of the circle
plot(x,y,'m-');   

grid on
axis('equal')