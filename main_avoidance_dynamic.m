clc
clear all
close all

%% paramenter initial
format short;
global h1;
% global h2;
% global h3;
global dynamic;
searchRange=4;
dynamic=[80,0,10];
circlrCenter=[40,50];
circlrRange=20;
% ruteNum=1;

point_start=[0,0];
point_end=[100,100];
point_now=point_start;
%% still_obstacle
r=rectangle('position',[circlrCenter(1)-circlrRange,circlrCenter(2)-circlrRange...
    circlrRange*2,circlrRange*2],'Curvature',[1 1]);
figure(1);
hold on
r.FaceColor=[0 0 0];%ÕÏ°­ÎïÑÕÉ«£¨È±£©
axis=([0 100 0 100]);%%%%
rute=[point_start];
ruteLength=0;
%% iterator
while (sqrt((point_end(2)-point_now(2))^2+(point_end(1)-point_now(1))^2)>=2*searchRange)
    pot=point8(point_now,point_end,searchRange);
    searchLength=inf;
    for i=1:8
        if (~isOnObs(pot(i,:),circlrCenter,circlrRange))
            pot18=point8(pot(i,:),point_end,searchRange);
            for j=1:8
                if (~isOnObs(pot18(j,:),circlrCenter,circlrRange))
                    Length=sqrt((pot18(j,1)-point_end(1))^2+(pot18(j,2)-point_end(2))^2);
                end
                if Length<searchLength
                    searchLength=Length;
                    preRote=pot(i,:);
                end      
            end
        end
    end
point_now=preRote;
rute=[rute;preRote];%rute=[rute;point_now];
ruteLength=ruteLength+searchLength;
circle(point_now(1),point_now(2),3);
dynamic=dongtai(3,12,80,0,0,1);
pause(0.1);
delete(h1);
% delete(h2);
% delete(h3);
    
end
    %% plot map
rute=[rute;point_end];   
ruteLength=ruteLength+sqrt((point_end(1)-point_now(1))^2+(point_end(2)-point_now(2))^2);
circle(point_end(1),point_end(2),3);
plotRout(rute);
    
    