function fonctions_bsplines(vecteur_noeud, m)
  % intervalle d'écaluation ti
  ti = vecteur_noeud(1):0.005:vecteur_noeud(end);
  n = length(vecteur_noeud);
  % Pour chaque fonction...
  for i=1:n-m-1
    N = [];
    for t=ti
      % evaluation en t de chaque fonction B-spline
      N(end+1) = fonctionb(vecteur_noeud, t, m, i);
    end
    % affichage
    plot(ti, N);
    hold on;
 end
 hold off;
 pause(4);
end
