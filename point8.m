function pot=point8(point_now,point_end,searchRange)
Alpha=atan((point_end(2)-point_now(2))/(point_end(1)-point_now(1)));
pot1=[(point_now(1)+searchRange*cos(Alpha+1/4*pi)),(point_now(2)+searchRange*sin(Alpha+1/4*pi))];
pot2=[(point_now(1)+searchRange*cos(Alpha+1/2*pi)),(point_now(2)+searchRange*sin(Alpha+1/2*pi))];
pot3=[(point_now(1)+searchRange*cos(Alpha+3/4*pi)),(point_now(2)+searchRange*sin(Alpha+3/4*pi))];
pot4=[(point_now(1)+searchRange*cos(Alpha+pi)),(point_now(2)+searchRange*sin(Alpha+pi))];
pot5=[(point_now(1)+searchRange*cos(Alpha+5/4*pi)),(point_now(2)+searchRange*sin(Alpha+5/4*pi))];
pot6=[(point_now(1)+searchRange*cos(Alpha+6/4*pi)),(point_now(2)+searchRange*sin(Alpha+6/4*pi))];
pot7=[(point_now(1)+searchRange*cos(Alpha+7/4*pi)),(point_now(2)+searchRange*sin(Alpha+7/4*pi))];
pot8=[(point_now(1)+searchRange*cos(Alpha)),(point_now(2)+searchRange*sin(Alpha))];
pot=[pot1;pot2;pot3;pot4;pot5;pot6;pot7;pot8];
for n=1:8
    for m=1:2
       if pot(n,m) <10^-6
            pot(n,m)=0;
       else
           pot(n,m)=roundn(pot(n,m),-4);
        
       end 
end

end