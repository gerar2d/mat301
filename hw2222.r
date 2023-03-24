A <- 0.34 
B <- 0.72 


# Pr(A or B) = Pr(A) + Pr(B) - Pr(A and B) 
A + B - ((A+B) - 1) 


# Pr(Omega) 
1 # Omega is everything 


# Pr(A and B) = Pr(A) + Pr(B) - Pr(A or B) 
(A+B)-1 


# Pr(A' and B') = Pr((A or B)') 
1 - 1 


# Pr(B' or A') = Pr((A and B)') 
1 - ((A+B)-1) 


# Pr(M or S) = Pr(M) + Pr(S) - Pr(M and S) 


M <- 0.83 
S <- 0.17 
MandS <- 0.26 
M + S - MandS