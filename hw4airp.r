# Data from the question: 
D <- 0.67 
L.given.D <- 0.53 
Ln.given.Dn <- 0.9 


#a. Pr(D') 
Dn <- 1-D 
Dn 


#b. Pr(L'|D) = 1 - Pr(L|D) 
Ln.given.D <- 1 - L.given.D 
Ln.given.D 


#c. Pr(L|D') 
L.given.Dn <- 1 - Ln.given.Dn 
L.given.Dn 


#d. Pr(L and D) = Pr(L|D) Pr(D) 
L.and.D <- L.given.D * D 
L.and.D 


#e. Pr(L and D') 
L.and.Dn <- L.given.Dn * Dn 
L.and.Dn 


#f. Pr(L) = Pr(L|D)Pr(D) + Pr(L|D')Pr(D') 
L <- L.given.D * D + L.given.Dn * Dn 
L 


#g. Pr(D'|L) = Pr(L|D')Pr(D')/Pr(L) 
Dn.given.L <- (L.given.Dn*Dn)/(L) 
Dn.given.L 


#h. Pr(D|L') = Pr(L'|D)Pr(D)/Pr(L') 
D.given.Ln <- (Ln.given.D*D)/(1-L) 
D.given.Ln