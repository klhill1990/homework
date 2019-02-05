trees <- read.csv("https://raw.githubusercontent.com/dmcglinn/quant_methods/5b4da72895245cdd91db3926308128c95c357391/data/treedata_subset.csv")

trees_abi <- subset(trees, trees$spcode == 'ABIEFRA')
trees_ace <- subset(trees, trees$spcode == 'ACERRUB')

tree_plots <- function(x) {
  for(i in 5:9)  {
    plot((x[,4]) ~ (x[,i]), 
         main = paste((x[1,3]), "( n =", dim(x)[1], ")"), xlab = colnames(x[i]), ylab = colnames(x[4]))
  }
}

tree_plots(trees_abi)
tree_plots(trees_ace)
