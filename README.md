# red-robby.github.io

## About

This repository contains the documents used to build the [website](https://red-robby.github.io/)
hosting my presentation materials for STAT 33B/133 at UC Berkeley. The website is
generated with [Quarto](https://quarto.org/) and hosted by [GitHub Pages](https://pages.github.com/).

If you'd like to generate it locally, you will need to download [R](https://www.r-project.org/) (>= 4.1.2), [Quarto](https://quarto.org/docs/get-started/), and all the package dependencies (see below). Once downloaded, run the following line. 

```
quarto render <directory>
```

If you'd prefer to open it directly in your browser, replace the last line with the following.

```
quarto preview <directory>
```

Here, ``<directory>`` denotes the path to the repository. See [here](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) if you're new to Git and are unsure how to clone (download) it.

## Package Dependencies 

If you receive a _missing packages_ error when attempting to render the website, run the script
``scripts/install-dep.R`` from the project root directory to download all required packages.

```
Rscript scripts/install-dep.R
```
