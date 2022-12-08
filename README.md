# Penguins Assignment

This repository contains all the contents of the work done for the penguins assignment by candidate 1054581. 

The organisation of the data is as follows:

 - src : Contains the source code of the assignment. This is limited to the scripts and markdowns
 - functions : Countains the source code for the functions which are accessed and used within the scripts and markdowns
 - raw_data : Contains the raw data used analysed by the scripts
 - clean_data : Contains the cleaned version of the raw data after undergoing the cleaning process
 - filtered_data : Contains the filtered version of the clean data after being selected for culmen length and body mass
 - figures : Contains png's and svg's of plots outputted from the scripts
 - obj : Contains any object code resulting from the source code. This includes any knitted HTML files
 
The code is attempted to be written in a way that means it should not require any commenting. Naming of files and ensuring single responsibility is used in order to aid this.

The order of process should be followed carefully and please set your working directory to the base of this repository when attempting to replicate the code. penguins/ should be the WD. It is as follows. 

1. The raw data was cleaned using dataCleaning.R
2. The clean data was filtered using filtering.R
3. The filtered data was plotted to get an overview of the the data using intialPlotting.R and generated a figure.
4. The whole dataset was analysed using a linear model using whole_lm.R. Here the assumptions were tested and the linear model generated
5. The individual species were analsyed seperately within their own scripts. These are adelie_lm.R, chinstrap_lm.R and gentoo_lm.R. A linear model and assumptions test was generated for each of these.
6. The filtered data was plotted using final_plotting.R

All the functions used within these scripts can be found within the functions directory.
