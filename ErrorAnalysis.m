figure(3)
%Code to plot log(error) versus log(?t*) for the FTCS method
err = zeros(size(3,1));
dt = [0.000125,0.00015625,0.0002];
for count = 1:3
    [T,E] = FTCS(dt(count),0.02,1);
    err(count) = E;
end
plot(log(dt), log(err));

figure(4)
%Code to plot log(error) versus log(?x*) for the FTCS and Crank-Nicholson methods
dx = [0.1, 0.2, 0.25];
err1=zeros(size(3));
err2=err1;
for count = 1:3
    [T,E] = FTCS(0.00005,dx(count),1);
    err1(count) = E;
    [T,E] = CrankNicholson(0.00005,dx(count),1);
    err2(count) = E;
end
plot(log(dx), log(err1),log(dx),log(err2));

figure(5)
%Code to plot log(error) versus log(?t*) for the Crank-Nicholson method
dt = [0.025,0.04, 0.05];
for count = 1:3
    [T,E] = CrankNicholson(dt(count),0.02,1);
    err(count) = E;
end
plot(log(dt), log(err));

figure(6)
%Code to plot temperature profiles obtained by Crank-Nicholson method for various d
d = [0.2, 0.4, 0.5, 1, 5];
for count = 1:5
    [T,E] = CrankNicholson(d(count)*0.02^2,0.02,1);
    plot(0:0.02:1,T);
    hold on;
end
hold off;

figure(7)
%Code to plot temperature profiles obtained by FTCS method for various d
d = [0.2, 0.4, 0.5, 0.5050505];
for count = 1:4
    [T,E] = FTCS(d(count)*0.02^2,0.02,1);
    plot(0:0.02:1,T);
    hold on;
end
hold off;