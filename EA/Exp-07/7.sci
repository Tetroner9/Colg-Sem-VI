clc;
clear;
N = input("Enter the no of elements: ")
D = input("Enter the space between 2 elements: ")
k = 2 *%pi;
theta = 0.01:0.01:2*%pi;
a = input("Enter the type of array 1. broadside and 2. endfire: ");
if a==1 then
    beta = 0;
end
if a==2 then 
    theta = input("Enter the theta 1-0 and 2-180:");
    if theta ==1 then 
        beta =-(k*D)
    else if theta==2 then
            beta = k*D
    end
    end
end
theta = 0.01:0.01:2*%pi;
S= k*D*(cos(theta))+beta;
AF = (sin((N*S)/2))./(N*sin(S/2));
norm = AF./max(AF);
polarplot(theta,norm);
disp("The value of AF is",AF);
