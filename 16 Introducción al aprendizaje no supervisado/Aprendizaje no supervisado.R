

# Introduccion al aprendizaje no supervisado



data("iris")
X_r <- iris[,1:4]
especie <- iris$Species

dim(X_r)
summary(X_r)

muestra <- X_r[1:5,]
muestra

D_euclid_r <- as.matrix(dist(muestra, method = "euclidean"))

D_euclid_r

D_manh_r <- as.matrix(dist(muestra, method = "manh"))
D_manh_r


X_est_r <- scale(X_r)
round(colMeans(X_est_r),5)

round(apply(X_est_r,2,sd),5)

par(mfrow=c(1,2))
plot(X_r[,1],X_r[,3], pch=19, col = "steelblue",xlab = "Largo del sepalo(cm)", ylab = "Largo del petalo(cm)",
     main = "Escala original")

plot(X_est_r[,1],X_est_r[,3], pch=19, col = "steelblue",xlab = "Largo del sepalo(cm) estandar", ylab = "Largo del petalo(cm) estandar",
     main = "Escala original estandar")


colSums(is.na(X_r))

round(cor(X_r,),2)


colores <- c("steelblue","darkorange","forestgreen")

plot(X_r[,1],X_r[,3],pch = 19,
     col = colores[as.integer(especie)],
     xlab = "Longitud del sepalo(cm)",
     ylab = "Longitud del pétalo(cm)"
 
     )

legend("topleft", legend = levels(especie),
       col = colores, pch = 19, bty = "n")

