numerAlbumu=310035;
rng(numerAlbumu);
N=32;
items(:,1)=round(0.1+0.9*rand(N,1),1);
items(:,2)=round(1+99*rand(N,1));
W = 0.3 * sum(items(:,2));

scores = items(:,1);
weights = items(:,2);
