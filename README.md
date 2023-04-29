[![orcid](https://img.shields.io/badge/ORCID-0000--0002--3929--788X-green?style=plastic&logo=orcid&url=https://orcid.org/0000-0002-3929-788X)](https://orcid.org/0000-0002-3929-788X)

# Pause particles influencing recollection in lectures
This repository contains the data and code for "Pause particles influencing recollection in lectures" by Mikey Elmers for the 20th International Congress of Phonetic Sciences (ICPhS '23), Prague, August 7-11. This project investigates the effect of pause-internal particles particles (PINTs) on recall in a listening experiment.

The following PINTs are investigated: 

* silence (sil)
* inhalation noise (in)
* exhalation noise (ex)
* filler particles (uh/um)
* tongue click (cl)

## Table Of Contents

- [Instructions](#instructions)
- [Directory information](#directory-information)
    * [tree structure](#tree-structure)
    * [data](#data)
    * [docs](#docs)
    * [output](#output)
    * [scripts](#scripts)
- [Issues/comments/suggestions](#issuescommentssuggestions)
- [License](#license)
- [References](#references)

## Instructions
1. Clone repository.
   ```bash
   git clone https://github.com/MikeyElmers/paper_icphs23.git
   cd paper_icphs23/
   ```
2. Rmarkdown documents and the sessionInfo are located in `output/`.

3. If you would like to re-run the entire analysis: 
    + NOTE: This will delete all the data from the `data/final/` as well as everything in `output/` except for sessionInfo.txt to run the pipeline from scratch. 
   ```bash
   make clean
   make project
   ```

## Directory Information
### `tree structure`
<pre>
├── data
│   ├── final
│   │   ├── data_binomial_all.csv
│   │   ├── data_de.csv
│   │   ├── data_en.csv
│   │   └── data_full.csv
│   ├── raw
│   │ ├── nns
│   │ │   ├── sessions.csv
│   │ │   └── trials.csv
│   │ └── ns
│   │     ├── sessions.csv
│   │     └── trials.csv
└── working
│   └── info.txt
├── docs
│   ├── elmers_icphs23_paper.pdf
│   └── elmers_icphs23_poster.pdf
├── LICENSE.md
├── Makefile
├── output
│   ├── 02_analysis.html
│   └── sessionInfo.txt
├── icphs23.Rproj
├── README.md
├── renv.lock
└── scripts
    ├── 00_renvRestore.R
    ├── 01_clean.R
    └── 02_analysis.Rmd
</pre>

### `data`
- Raw data
- Final data

### `docs`
- `elmers_icphs23_paper.pdf`: ICPhS '23 paper submission (will be added when available)
- `elmers_icph23_poster.pdf`: ICPhS '23 poster submission (will be added when available)

### `output`
- `02_analysis.html`: Output of analysis.Rmd file
- `sessionInfo.txt`: R session info

### `scripts`
- `00_renvRestore.R`: Restores project dependencies
- `01_clean.R`: Cleans and exports final data
- `02_analysis.Rmd`: Descriptive and inferential data analysis

## Issues/Comments/Suggestions
Please use the [issue tracker](https://github.com/MikeyElmers/paper_icphs23/issues).

## License
This code is licensed under the terms of the MIT license. See [LICENSE.md](https://github.com/MikeyElmers/paper_icphs23/blob/main/LICENSE.md)

## References
Langdon Hammer, Modern Poetry (Yale University: Open Yale Couses), http://oyc.yale.edu (Accessed June 27, 2022). License: Creative Commons BY-NC-SA