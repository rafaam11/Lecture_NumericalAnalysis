clear
clc
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

A = [ -1 1 1 0 0 0
    0 0 0 -1 1 1
    0 Laby Lady 0 Labx -Ladx
    Laby 0 Lbdy Labx 0 -Lbdx
    -Lacy Lbcy Lcdy Lacx -Lbcx -Lcdx
    Lady -Lbcy 0 -Ladx Lbcx 0]
B = [-Fxc
    Fyc
    (Lacy*Fxc)+(Lacx*Fyc)
    (Lbcy*Fxc)+(Lbcx*Fyc)
    0
    (Lcdy*Fxc)+(Lcdx*Fyc)]
x = A\B

% syms Fxa Fxb Fxd Fya Fyb Fyd
% eqn1 = Fxc - Fxa + Fxb + Fxd == 0;
% eqn2 = -Fyc -Fya + Fyb + Fyd == 0;
% eqn3 = Laby*Fxb + Labx*Fyb - Lacy*Fxc - Lacx*Fyc + Lady*Fxd - Ladx*Fyd == 0;
% eqn4 = Laby*Fxa + Labx*Fya - Lbcy*Fxc - Lbcx*Fyc + Lbdy*Fxd - Lbdx*Fyd == 0;
% eqn5 = -Lacy*Fxa + Lacx*Fya + Lbcy*Fxb - Lbcx*Fyb + Lcdy*Fxd - Lcdx*Fyd == 0;
% eqn6 = Lady*Fxa - Ladx*Fya - Lbcy*Fxb + Lbcx*Fyb - Lcdy*Fxc - Lcdx*Fyc == 0;
% [A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5,eqn6],[Fxa, Fxb, Fxd, Fya, Fyb, Fyd]);
% X = linsolve(A,B)