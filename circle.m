function circle(x,y,r)
% global h3;
alpha=0:pi/1000:2*pi;
x1=r*cos(alpha)+x;
y1=r*sin(alpha)+y
figure(1)
plot(x1,y1);
axis([0 100 0 100]);
% h3=plot(x1,y1)
hold on
end