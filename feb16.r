a <- 72   # Pr(mica)
b <- 43   # Pr(S AND M)
c <- 100
d <- b/a  # Pr(Schist|mica) = Pr(Schist AND Mica) / Mica
d

# Pr(S OR M) = 1
# Pr(S) = ?(e) = (43.28)
# Pr(M) = .72
# Pr(S AND M) = .43
e <- 1 - .72 + 43 #Pr(S OR M) = Pr(S) + Pr(M) - Pr(S AND M)
e
