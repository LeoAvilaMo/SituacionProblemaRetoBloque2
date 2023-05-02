% Situacion Problema

% Declarando valores iniciales

% Magnitud de cargas
qpos = 10;
qneg = -5;
% Posición
bar1 = [1,10];
bar2 = [21,10];
%Espacio
spacex = -2:2:26;
spacey = -2:2:26;
[X,Y] = meshgrid(spacex,spacey);
%Hipotenusa
mag1 = sqrt((X-bar1(1)).^2 + (Y-bar1(2)).^2);
mag2 = sqrt((X-bar2(1)).^2 + (Y-bar2(2)).^2);
%Distancias por dirección
longu1X = (X - bar1(1))./mag1;
longu2X = (X - bar2(1))./mag2;
longu1Y = (Y - bar1(2))./mag1;
longu2Y = (Y - bar2(2))./mag2;
%Magnitud del campo
campE1 = 8.9876e9 * qpos ./ (mag1)^2; 
campE2 = 8.9876e9 * qneg ./ (mag2)^2; 
%Ex y Ey
CampoEX = (campE1 .* longu1X) + (campE2 .* longu2X);
CampoEY = (campE1 .* longu1Y) + (campE2 .* longu2Y);

% Input del punto del usuario
% disp("Rango recomendado: ");
% disp("x [-2,26]");
% xuser = input("Escriba la coordenada en x deseada: ");
% disp("Rango recomendado: ");
% disp("y [-2,26 ]");
% yuser = input("Escriba la coordenada en y deseada: ");

% Dando un punto aleatorio
xuser = randi([-2,26],1);
yuser = randi([-2,26],1);
% Aplicando las fórmullas
maguser1 = sqrt((xuser-bar1(1)).^2 + (yuser-bar1(2)).^2);
maguser2 = sqrt((xuser-bar2(1)).^2 + (yuser-bar2(2)).^2);
% Obteniendo el campu eléctrico
u1Xuser = (xuser - bar1(1))./maguser1;
u2Xuser = (xuser - bar2(1))./maguser2;
u1Yuser = (yuser - bar1(2))./maguser1;
u2Yuser = (yuser - bar2(2))./maguser2;
E1user = 8.9876e9 * qpos ./ (maguser1)^2; 
E2user = 8.9876e9 * qneg ./ (maguser2)^2;
EXuser = (E1user .* u1Xuser) + (E2user .* u2Xuser);
EYuser = (E1user .* u1Yuser) + (E2user .* u2Yuser);

%Graficando
figure(1)
%Graficando el campo eléctrico
quiver(X,Y,CampoEX,CampoEY);
% Texto de datos de la coordenada
string = "\leftarrow Punto:"+"("+round(xuser)+","+round(yuser)+")";
text(xuser,yuser,string);
%Cuadro de campo eléctrico en la coordenada
dim = [.13 .11 .3 .2];
str = "Magnitud del campo eléctrico Ex y Ey: "+ newline + "Ex = "+ EXuser + newline +"Ey = " + EYuser;
annotation('textbox',dim,'String',str);
% Placas y punto
hold on;
plot(xuser,yuser,Color = "#7E2F8E",Marker=".",MarkerSize=25)        %Punto
rectangle('Position',[0 0 2 20],'FaceColor','r','EdgeColor','#8B0000')        % Primera placa
rectangle('Position',[20 5 2 10],'FaceColor','b','EdgeColor','#00008B')     % Segunda placa