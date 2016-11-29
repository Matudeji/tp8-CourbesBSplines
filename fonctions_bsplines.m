function fonctions_bsplines(vecteur_noeud, m)

  ti = vecteur_noeud(1):0.005:vecteur_noeud(end);
  n = length(vecteur_noeud);

  for i=1:n-m-1
    N = [];
    for t=ti
      N(end+1) = fonctionb(vecteur_noeud, t, m, i);
    end
    plot(ti, N);
    hold on;
 end
 hold off;
 pause(2);
end
