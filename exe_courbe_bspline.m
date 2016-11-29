% EXO1

% disp('Click gauche pour insérer les points de contrôle et click droit pour le dernier et terminer.');
% tasto=1;
% figure;
% axis([0 10 0 10 ]);
% grid on;
% hold on;
%
% x=[];y=[];
% %t=input('valeur de t*: ');
% while tasto == 1
%   [xi,yi,tasto]=ginput(1);
%   plot (xi,yi,'r*');
%   x= [x xi];
%   y= [y yi];
% end
% m = input('Rentrer m:');
%
% k = m+1;
% n = length(x)-1;
%
% N = n+k+1
% vecteur_noeud = zeros(N, 1);
% for i =1:N
%   vecteur_noeud(i) = input('rentrer un noeud')
% end
% xp = [];
% yp = [];
% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud);
% disp('xp dans exe');
% length(xp)
% length(yp)
% plot(xp, yp);
% pause(2);

% EXO2
% a)

% m = 3
% k = m+1;
%
% x = [1 3 5 2];
% y = [2 6 4 2];
% n = length(x)-1;
% N = n+k+1;
% vecteur_noeud = 1:N;
% xp = [];
% yp = [];
% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud)
% plot(xp, yp);
% pause(2);
