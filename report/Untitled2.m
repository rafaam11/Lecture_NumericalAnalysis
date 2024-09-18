clc
clear
format long

Labx = 8;
Laby = 7.69;
Lacx = 51.5;
Lacy = 9.41;
Ladx = 40.2;
Lady = 87.11;
Lbcx = 43.5;
Lbcy = 17.1;
Lbdx = 48.2;
Lbdy = 79.42;
Lcdx = 91.7;
Lcdy = 96.52;
Fin = 45;
theta = 180 - 173.95192897;
Fxc = Fin*cosd(theta)
Fyc = Fin*sind(theta)

A = [ -1 1 1 0 0 0; 0 0 0 -1 1 1; 0 Laby Lady 0 Labx -Ladx; Laby 0 Lbdy Labx 0 -Lbdx; -Lacy Lbcy Lcdy Lacx -Lbcx -Lcdx; Lady -Lbcy 0 -Ladx Lbcx 0;]
b = [-Fxc; Fyc; (Lacy*Fxc)+(Lacx*Fyc); (Lbcy*Fxc)+(Lbcx*Fyc); 0; (Lcdy*Fxc)+(Lcdx*Fyc);]
Ab=[A b]; %첨가행렬
[R,C]=size(Ab);
for j=1:R-1
    for i=j+1:R
        Ab(i,j:C)=Ab(i,j:C)-Ab(i,j)/Ab(j,j)*Ab(j,j:C);
    end
end
Ab
y=zeros(R,1); %% 연립방정식의 수치해
y(R)=Ab(R,C)/Ab(R,R);

for i=R-1:-1:1 %%후치법
    y(i)=(Ab(i,C)-Ab(i,i+1:R)*y(i+1:R))/Ab(i,i);
end
y