


process.object <- function(obj,do_scaling = FALSE, do_PCA = FALSE, do_LSI=FALSE)
{
  # 1- Scale the Data
  if (do_scaling){
    print("Processing Function: Scaling Data")
    obj <- ScaleData(obj, features = rownames(obj))
  }
  # 2- PCA
  if (do_PCA) {
    print("Processing Function: Calculating PCA")
    obj <- RunPCA(obj, features =  rownames(obj), npcs = N_PC)
  }
  # 3- LSI
  if (do_LSI)
  {
    print("Processing Function: Calculating LSI")
    obj <- RunLSI(obj, features = rownames(obj), n= N_LSI)
  }
  return(obj)
}


do.imputation <- function(neighborhood,input_array, impute_array, mode = 1)
{
  for (i in 1:ncol(neighborhood)){
    impute_array <- impute_array + input_array[,neighborhood[,i]]
  }
  # Divide over the number of neighbors , note ncol(out) == N_neighbors otherwise unkown error 
  impute_array <- impute_array / (impute_NN+1)
  return(impute_array)
}
