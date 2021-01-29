# useful_functions
This folder contains a selection of functions and code snippets which are useful to process synthesis datasets.

Next action/ vision: this folder will be converted to an R package containing useful functions for synthesis.

## Content
- `add_back_missing_plots_species_combinations`



### add_back_missing_plots_species_combinations
R function to use together with the synthesis diversity dataset. Some plots x species combinations with 0 species were removed from Bacteria and soilfungi in order to save memory. Adding back the missing combinations sometimes requires adding a plot which is completely missing from the dataset, which is exactly what this function does. Find further information about the "missing zeros" in the [synthesis dataset manual](https://github.com/biodiversity-exploratories-synthesis/Synthesis-dataset-manual/blob/main/Synthesis%20datasets%20%20How%20to%20use.md).

Usage Example: 
```
bacteria.RNA <- add_back_missing_plots_species_combinations(bacteria.RNA, all_plots)
```

See the documentation of the function in the script itself.

The function requires the package `data.table`.
