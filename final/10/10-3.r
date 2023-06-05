x <- c(89.7, 81.4, 84.5, 84.8, 87.3, 79.7, 85.1, 81.7, 83.7, 84.5)
y <- c(85.7, 86.1, 83.9, 91.9, 86.3, 85.3, 84.9, 89.1, 83.7, 88.5)

#. a
t.test(x, mu = 85.0, alternative = "less") 
# .10 > .2145
# NO

#. b
t.test(x, y, alternative = "two.sided") 
# .10 < .07706
# YES

#. c
t.test(x, y, alternative = "less")
# .10 < .03853
# YES
