disp('Click gauche pour insérer les points de contrôle et click droit pour le dernier et terminer.');
tasto=1;
figure;
axis([0 10 0 10 ]);
grid on;
hold on;

x=[];y=[];
%t=input('valeur de t*: ');
while tasto == 1
  [xi,yi,tasto]=ginput(1);
  plot (xi,yi,'r*');
  x= [x xi];
  y= [y yi];
end

n = length(x);

m = 2;
vecteur_noeud = 0:n+m+2;

xp = [];
yp = [];
ti = 0:0.01:10;
for t=ti
  for i=1:n
    disp("vect taille")
    length(vecteur_noeud)
    xp(end+1) = x(i) * fonctionb(vecteur_noeud, t, m+1, i);
    yp(end+1) = y(i) * fonctionb(vecteur_noeud, t, m+1, i);
  end
end
xp
yp

plot(xp, yp);
hold on;
pause;
