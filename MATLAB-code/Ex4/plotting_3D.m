% plotting_3D.m

% % Sperical helix
% c=5;
% t=linspace(0,10*pi,200);
% x=sin(t/(2*c)).*cos(t);
% y=sin(t/(2*c)).*sin(t);
% z=cos(t/(2*c));
% plot3(x,y,z,'r','LineWidth',2), grid on, xlabel('x'), ylabel('y'), zlabel('z')

% Sine wave on a sphere
a=10;
b=1;
c=0.3;
t=linspace(0,2*pi,200);
x=cos(t).*sqrt(b^2-(c^2*cos(a*t).^2));
y=sin(t).*sqrt(b^2-(c^2*cos(a*t).^2));
z=c*cos(a*t);
plot3(x,y,z,'r','LineWidth',2), grid on, xlabel('x'), ylabel('y'), zlabel('z')

% % Sine surface
% u=linspace(0,2*pi,50);
% v=u;
% [u,v]=meshgrid(u,v);
% x=sin(u);
% y=sin(v);
% z=sin(u+v);
% surf(x,y,z), axis off, shading interp
% 
% % Spring
% r1=0.5;
% r2=0.5;
% t=1.5;
% 
% u=linspace(0,10*pi,100);
% v=u;
% [u,v]=meshgrid(u,v);
% 
% x=(1-r1*cos(v)).*cos(u);
% y=(1-r1*cos(v)).*sin(u);
% z=r2*(sin(v)+t*(u/pi));
% figure
% surf(x,y,z), axis off, shading interp

% Elliptic torus
% c=2.5;
% 
% u=linspace(-pi,pi,100);
% v=linspace(0,pi,100);
% [u,v]=meshgrid(u,v);
% 
% x=(c+cos(v)).*cos(u);
% y=(c+cos(v)).*sin(u);
% z=sin(v).*cos(v);
% figure
% surf(x,y,z), shading interp

