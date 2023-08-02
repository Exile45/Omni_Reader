clear, clc, close all, format compact

importdata("Omni Reader.csv") ;

Time = ans.data(1:1493,1) ;

Shockpot = ans.data(1:end,2) ;

GyroX = ans.data(1:1493,7) ;
GyroY = ans.data(1:1493,8) ;
GyroZ = ans.data(1:1493,9) ;


AccelX = ans.data(1:1493,10) ;
AccelY = ans.data(1:1493,11) ;
AccelZ = ans.data(1:1493,12) ; 


MagX = ans.data(1:1493,13) ;
MagY = ans.data(1:1493,14) ;
MagZ = ans.data(1:1493,15) ;

figure(1)
subplot(3,1,1)
plot(Time, GyroX,'b.')
axis([100000 120000 -20 30])
xlabel("Time [ms]")
ylabel("GyroX")
subplot(3,1,2)
plot(Time, GyroY,'b.')
axis([100000 120000 -20 20])
xlabel("Time [ms]")
ylabel("GyroY")
subplot(3,1,3)
plot(Time, GyroZ,'b.')
xlabel("Time [ms]")
ylabel("GyroZ")
sgtitle('Gyro Data')
axis([100000 120000 -95 10])

pause(2)

figure(2)
subplot(3,1,1)
plot(Time, AccelX, 'r.')
xlabel('Time [ms]')
ylabel('AccelX')
subplot(3,1,2)
plot(Time, AccelY, 'r.')
xlabel('Time [ms]')
ylabel('AccelY')
subplot(3,1,3)
plot(Time, AccelZ, 'r.')
xlabel('Time [ms]')
ylabel('AccelZ')
sgtitle('Accel Data')

pause(2)

figure(3)
subplot(3,1,1)
plot(Time, MagX, 'r.')
xlabel('Time [ms]')
ylabel('MagX')
subplot(3,1,2)
plot(Time, MagY, 'r.')
xlabel('Time [ms]')
ylabel('MagY')
subplot(3,1,3)
plot(Time, MagZ, 'r.')
xlabel('Time [ms]')
ylabel('MagZ')
sgtitle('Mag Data')

pause(2)

p = polyfit(Time,Shockpot,10) ; 
y2 = polyval(p,Time) ;

figure(4)
plot(Time, Shockpot, '.')
hold on
plot(Time, y2, 'r-.')
hold off
xlabel('Time [ms]')
ylabel('Shockpot')
title('Shockpot Data')
