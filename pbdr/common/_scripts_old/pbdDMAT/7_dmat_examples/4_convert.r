library(pbdDEMO, quiet=TRUE)
init.grid()

comm.set.seed(diff = TRUE)

N.gbd <- 1 + comm.rank()
X.gbd <- matrix(rnorm(N.gbd * 3), ncol = 3)

# convert GBD to DMAT
X.dmat <- gbd2dmat(X.gbd)

# convert DMAT to GBD
new.X.gbd <- dmat2gbd(X.dmat)

# undistribute
X <- as.matrix(X.dmat)

finalize()
