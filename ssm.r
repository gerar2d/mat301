# Data from the question: STATISTICAL INDEPENDENCY
M <- 0.72      # Schist
MandS <- 0.43  # Mica and Schist


# Pr(M)
M

# Pr(S|M) = Pr(SandM)/Pr(M)
SgivenM <- MandS/M
SgivenM

# Pr(S and M) = Pr(M and S)
MandS

# Pr(S) = Pr(S or M) + Pr(S and M) - Pr(M)
S <- 1 + 0.43 - 0.72
S

# Pr(M|S) = Pr(M and S)/Pr(S)
MgivenS <- 0.43/S
MgivenS