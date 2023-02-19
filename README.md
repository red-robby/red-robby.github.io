# red-robby.github.io

## About

This repository contains the documents used to build the [website](https://red-robby.github.io/)
hosting my presentation materials for STAT 33B/133 at UC Berkeley. The website is
generated with [Quarto](https://quarto.org/) and hosted by [GitHub Pages](https://pages.github.com/).

If you'd like to generate it locally, you will need to download [R](https://www.r-project.org/) (>= 4.1.2) and [Quarto](https://quarto.org/docs/get-started/). You may also need to download the 
package dependencies (see below). Once downloaded, clone the repository and run ``quarto render <directory>``.

```
git clone https://github.com/red-robby/red-robby.github.io.git your-name # or your preferred method
quarto render your-name
```

If you'd prefer to open it directly in your browser, replace the last line with the following.

```
quarto preview your-name
```

## Package Dependencies 

If you receive a _missing packages_ error when attempting to render the website, run the script
``script/install-dep.R`` from the project root directory to download all required packages.

```
Rscript script/install-dep.R
```
