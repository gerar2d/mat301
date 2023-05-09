# Pr(T+|V-) 
tp.given.vm <- 0.006 # fpr 


# Pr(T+|V+) 
tp.given.vp <- 0.91 # tpr 


# Pr(V+) 
vp <- 0.0745 # background prevalence for NYC 


# Pr(V-) 
vm <- 1 - vp 
vm 


# a. Compute Pr(T- | V+) = 1 - Pr(T+ | V+) 
tm.given.vp <- 1 - tp.given.vp 
tm.given.vp # False Negative Rate estimate for Test 


# b. Compute Pr(T- | V-) = 1 - Pr(T+|V-) 
tm.given.vm <- 1 - tp.given.vm 
tm.given.vm # True Negative Rate for Test 


# c. Compute Pr(T+) = Pr(T+|V+) Pr(V+) + Pr(T+|V-) Pr(V-) 
tp <- tp.given.vp * vp + tp.given.vm * vm 
tp # Positve test rate 


# d. Compute Pr(T-) = 1 - Pr(T+) 
tm <- 1 - tp 
tm # Negative test rate 


# e. Compute Pr(V+ | T+) = Pr(T+|V+) Pr(V+) / Pr(T+) 
vp.given.tp <- (tp.given.vp * vp)/tp 
vp.given.tp # Probability you are truly infected given you test positive 


# f. Compute Pr(V+ | T-): Pr(T-|V+) Pr(V+) / Pr(T-) 
vp.given.tm <- (tm.given.vp * vp)/tm 
vp.given.tm # Probability you are truly infected given you test negative 