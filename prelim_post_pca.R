library(ggfortify)
data("iris")
head(iris)

# Same method as julia (eigen decomposition on the covariance matrix)
pc <- princomp(iris[,-5],
             center = FALSE,
             scale. = FALSE)
summary(pc)

# Other method (not the same as Julia)
pc2 <- prcomp(iris[,-5],
              center = FALSE,
              scale. = FALSE)

# Plot the PCA ordination
autoplot(pc, 
         data = iris, 
         colour = 'Species')
autoplot(pc, data = iris, colour = 'Species',
         loadings = TRUE, loadings.colour = 'blue',
         loadings.label = TRUE, loadings.label.size = 3)

create_post(
  title = "R vs Julia: Principal Component Analysis (PCA)", # mandatory
  author = "auto",
  slug = "auto", # generates a website slug (URL)
  date_prefix = TRUE, # adds date for sorting
  draft = TRUE, 
  edit = interactive()
)

