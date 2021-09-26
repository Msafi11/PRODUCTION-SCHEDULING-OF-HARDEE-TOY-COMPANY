% The Objective functions is max 0.4x(1)+0.3x(2) , x(1)
% The goal is [180,200], the weight is [-0.67,-0.33], and the linear
% constraints is x(1)+x(2) <= 400 , 2x(1)+x(2) <= 500
%Create the objective function, goal, and weight.
fun = @(x)[0.4*x(1)+0.3*x(2);x(1)];
goal = [180,200];
weight = [-0.67,-0.33];
%Create the linear constraint matrices A and b representing A*x <= b.
A = [1 1
     2 1];
b = [400 500];
%Set an initial point [1,1] and solve the goal attainment problem and non -ve constraints:
x0 = [1,1];
lb = [0,0];
ub =[];
Aeq = [];
beq=[];
x = fgoalattain(fun,x0,goal,weight,A,b,Aeq,beq,lb,ub)
% x(1) value
x1value = sprintf('x(1) value = %s ',num2str(x(1)));
disp(x1value)
% x(2) value
x2value = sprintf('x(2) value = %ss ',num2str(x(2)));
disp(x2value)
%Find the value of F(x)  at the solution.
farray  = fun(x)
% Function(1) value
f1value = sprintf('Function 1 value = %s ',num2str(farray(1)));
disp(f1value)
% Function(2) value
f2value = sprintf('Function 2 value = %s ',num2str(farray(2)));
disp(f2value)
