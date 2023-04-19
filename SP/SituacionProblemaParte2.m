% Situacion Problema

%Definiendo los puntos del campo eléctrico y la carga
x1 = 11;
y1 = 4;
x2 = 11;
y2 = 16;
q = 2;
ke = 8990000000;


dx = (x2-x1);
dy = (y2-y1);
r = sqrt(dx^2 + dy^2)

%Componentes

dex = ke*q*dx/(r^3)         %Campo eléctrico en x
dey = ke*q*dy/(r^3)          %Campoo eléctrico en y

figure(1)

%Dibijando las placas
rectangle('Position',[0 0 2 20],'FaceColor','r','EdgeColor','#8B0000')        % Primera placa
rectangle('Position',[20 0 2 20],'FaceColor','b','EdgeColor','#00008B')     % Segunda placa
hold on
quiver(dex,dey)