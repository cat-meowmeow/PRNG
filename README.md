In this assignment, you will build a workflow for (pseudo) random number generation (PRNG). We will assume low-level random number generation; the default generator in R is a Mersenne-Twister, which produces pseudo random numbers that are approximately uniformly distributed on a unit cube in 623 dimensions. While this is not the most modern PRNG, it is sufficient for most purposes and fairly quick. In addition to the kind of random number engine, the function RNGkind allows one to set the algorithm used for normal (normal.kind) and discrete uniform (sample.kind) random number generation. The default values for these are Inversion and Rejection, respectively.
