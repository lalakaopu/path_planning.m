function dynamic=dongtai(v,range,px,py,vx,vy)
% dynamic=dongtai(3,12,80,0,0,1)
global h1;
% global h2;
persistent x;
persistent y;

if isempty(x)
    x=px;
end
if isempty(y)
    y=py;
end

x=x+vx*v;
y=y+vy*v;
dynamic=[x,y,range];
alpha=0:pi/2000:2*pi;%%%%%
x1=range*cos(alpha)+x;
y1=range*sin(alpha)+y;
figure(1);
h1=plot(x1,y1,'k');
% pointx(1)=x;
% pointx(2)=x-5;
% pontx(3)=x+5;
% pointy(1)=y+sqrt(3)*5;
% pointy(2)=y;
% pointy(2)=y;
% 
% h1=patch(pointx,pointy,[0.1 0.2 0.3])
axis equal;
% axis([0 100 0 100]);
end