# Data from the question: Probability
Tp.given.MCDp <- 0.91
Tp.given.MCDm <- 0.006
MCDp <- 0.07

# Pr(T+) = Pr(T+ | MCD+) Pr(MCD+) + Pr(T+ | MCD-) Pr(MCD-)
Tp <- Tp.given.MCDp * MCDp + Tp.given.MCDm * (1-MCDp)
Tp

# Pr(MCD+ | T+) = Pr(T+ | MCD+) Pr(MCD+) / Pr(T+)
(Tp.given.MCDp * MCDp)/Tp # Bayes' Theorem
