% Situacion Problema

%Definiendo los puntos del campo eléctrico y la carga

%1
x1 = 2;
y1 = 10;
x2 = 15;
y2 = 13;

q = 0.00000009;
ke = 8990000000;

dx = (x2-x1);
dy = (y2-y1);
r = sqrt(dx^2 + dy^2);

%Componentes

dex = (ke*(q)/(r^3))*dx;        %Campo eléctrico en x
dey = ke*(q*dy)/(r^3);          %Campoo eléctrico en y

%2
x1b = 15;
y1b = 10;
x2b = 20;
y2b = 13;

dxb = (x2b-x1b);
dyb = (y2b-y1b);
rb = sqrt(dxb^2 + dyb^2);

dexb = (ke*(-q)/(rb^3))*dxb;        
deyb = ke*(-q*dyb)/(rb^3); 

% 3

x1c = 2;
y1c = 3;
x2c = 4;
y2c = 10;

dxc = (x2c-x1c);
dyc = (y2c-y1c);
rc = sqrt(dxc^2 + dyc^2);

dexc = (ke*(q)/(rc^3))*dxc;     
deyc = ke*(q*dyc)/(rc^3);

% 4

x1d = 4;
y1d = 3;
x2d = 20;
y2d = 10;

dxd = (x2d-x1d);
dyd = (y2d-y1d);
rd = sqrt(dxd^2 + dyd^2);

dexd = (ke*(-q)/(rd^3))*dxd;         
deyd = ke*(-q*dyd)/(rd^3);

% Suma vectorial 1

det = dex+dexb;
dety = dey+deyb;

% Suma vectorial 2

det2 = dexc + dexd;
dety2 = deyc + deyd;

figure(1)

%Dibujando las placas
rectangle('Position',[0 0 2 20],'FaceColor','r','EdgeColor','#8B0000')        % Primera placa
rectangle('Position',[20 0 2 20],'FaceColor','b','EdgeColor','#00008B')     % Segunda placa
hold on


%Se grafican los puntos del campo
plot(x2,y2,"o")
hold on
plot(x1d,y1d,"o")
hold on

quiver(x2,y2,-det,dety)
quiver(x1d,y1d,det2,dety2)

