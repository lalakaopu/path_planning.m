function flag=isOnObs(point,circlrCenter,circlrRange)
global dynamic;
if (((point(1)-circlrCenter(1))^2+(point(2)-circlrCenter(2))^2)-circlrRange^2<0)||...
        (((dynamic(1)-point(1))^2+(dynamic(2)-point(2))^2)-dynamic(3)^2<0)
    flag=true;
else
    flag=false;
end
end