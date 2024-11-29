# In questo script definiamo funzioni di uso comune durante il corso.
require(glue)
require(tidiverse)

example_url <- function(example) {
  url = paste0("https://paolobosetti.quarto.pub/data/", example)
  return(url)
}

chauvenet <- function(x, threshold=0.5) {
  abs.diff <- abs(x - mean(x)) / sd(x) # vettore delle differenze
  s0 <- max(abs.diff)                  # massima diff.
  i0 <- which.max(abs.diff)            # posizione mass. diff.
  freq <- length(x) * pnorm(s0, lower.tail = F)
  result <- list(
    s0 = s0,
    index = i0,
    value = x[i0],
    reject = freq < threshold
  )
  samp <- deparse(substitute(x))
  print(glue("Chauvenet's criterion for sample {samp}"))
  print(glue("Suspect outlier: {i0}, value {x[i0]}"))
  print(glue("Expected frequency: {freq}, threshold: {threshold}"))
  print(glue("Decision: {d}", d=ifelse(result$reject, "reject it", "keep it")))
  invisible(result)
}


# Funzione per plottare i residui di un modello
# t è una tabella
# n è il nome di una colonna da usare come ascissa
resid_plot <- function(t, n) {
  t %>% 
    ggplot(aes(x={{n}}, y=resid)) +
    geom_point()
}