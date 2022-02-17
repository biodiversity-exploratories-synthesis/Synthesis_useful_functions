# useful_functions
This folder contains a selection of functions and code snippets which are useful to process synthesis datasets.

Next action/ vision: this folder will be converted to an R package containing useful functions for synthesis.


## Content
- `add_back_missing_plots_species_combinations`



### add_back_missing_plots_species_combinations
R function to use together with the synthesis diversity dataset. Some plots x species combinations with 0 species were removed from Bacteria and soilfungi in order to save memory. Adding back the missing combinations sometimes requires adding a plot which is completely missing from the dataset, which is exactly what this function does. Find further information about the "missing zeros" in the [synthesis dataset manual](https://github.com/biodiversity-exploratories-synthesis/Synthesis-dataset-manual/blob/main/Synthesis%20datasets%20%20How%20to%20use.md).

Example: 
```
bacteria.RNA <- add_back_missing_plots_species_combinations(bacteria.RNA, all_plots)
```

See the documentation of the function in the script itself.

The function requires the package `data.table`.

- `BEplotZeros`
R function that adds the sortable plot names to an existing dataset. Based on a column with Bexis plot names (e.g. AEG1), the function creates a column with sortable plot names (e.g. AEG01). Note: This function does the opposite of the `BEplotNonZeros.R` function (below).

Example:
```
#create a dataset with a plot name column
dat <- data.frame(Plot_name = c("AEG1", "AEG2", "HEW4", "SEG8", "SEW10"), Values=1:5)
dat <- BEplotZeros(dat, "Plot_name", plotnam = "Sorted_plot_name")
```

- `BEplotNonZeros`
R function that adds the original Bexis plot names (non sortable) to an existing dataset. Based on a column with sortable plot names (e.g. AEG01), the function creates a column with Bexis plot names (e.g. AEG1). Note: this function does the opposite of the `BEplotZeros` function (above).

Example:
```
#create a dataset with a Bexis plot name column
dat <- data.frame(Bexis_plot_name = c("AEG01", "AEG02", "HEW04", "SEG08", "SEW10"), Values=1:5) 
dat <- BEplotNonZeros(dat, "Bexis_plot_name", plotnam = "New_plot_name")
```

- `BEaddRegion`
R function that adds the Biodiversity Exploratories region code (ALB, SCH, HAI) to a dataset that contains a column with the Exploratories plot names.Note that the function currently only works with sortable plot names (e.g. "AEG01"), but not yet with Bexis plot names (e.g. "AEG1"). I will update it soon! In the meantime, please use the function `BEplotZeros` to add a column with sortable plot names.

Example:
```
#create a dataset with a plot name column
#' dat <- data.frame(Plot_name = c("AEG01", "AEG02", "HEW04", "SEG08", "SEW10"), Values=1:5)
#' dat <- BEaddRegion(dat, "Plot_name", regionam = "Explo")
```

- `BEaddHabitat`
This function adds the Biodiversity Exploratories habitat type (forest/grassland) to a dataset that contains a column with the Exploratories plot names.

Example:
```
#create a dataset with a plot name column (with or without zeros)
dat <- data.frame(Plot_name = c("AEG01", "AEG02", "HEW04", "SEG8", "SEW10"), Values=1:5)
dat <- BEaddHabitat(dat, "Plot_name", habitatname = "Habitat")
```