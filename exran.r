pi <- 3.14159265358979323

n <- 10000
seed <- 1

const <- 48271.0
denom <- 2.0^31.0 - 1.0

incir <- 0.0
for (i in 1:n){
    for (j in 1:n){
    	seed <- (const*seed) %% denom
    	ran_f <- seed/denom

    	coords1 <- ran_f
    	coords2 <- ran_f
    	slength <- sqrt(coords1*coords1+coords2*coords2)

    	if (slength <= 1.0) {
       	   incir <- incir +1
	   #print(incir)
    	}
    }
}


farea <- 4.0*incir/(n*n)

pi
farea
pi-farea
