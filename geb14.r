# Data from the question:
A <- 0.49
B <- 0.54

# Pr(A')
An <- 1 - A
An

# Pr(A union B) = Pr(A) + Pr(B) - Pr(A intersect B)
AandB <- ((A+B) - 1)
AandB
AorB <- A + B - AandB
AorB

# Pr(A' and B') = Pr( (A or B)' )
1-AorB

# Pr(A' or B') = Pr( (A and B)' )
1 - AandB


