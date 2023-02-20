# This script scans the .qmd files to find the packages used and installs them.
# This should be ran before attempting to render the website for the first time.
# You can do so with, `Rscript scripts/install-dep.R`, which must be done from 
# the root directory.

install_if_missing <- function(pkg_name) {
    if (!(pkg_name %in% rownames(installed.packages()))) {
        cat("Dependency missing:", pkg_name, "-- attempting to install...\n")
        install.packages(pkg_name, verbose = TRUE)
    } else {
        cat("Dependency satisfied:", pkg_name, "\n")
    }
}

load_script_dependency <- function(pkg_name) {
    install_if_missing(pkg_name)
    stopifnot(library(pkg_name, logical.return = TRUE, character.only = TRUE))
}

cat("Checking script dependencies...\n")

load_script_dependency("stringr")
load_script_dependency("readr")

# This requires the script be ran from the root directory. 
doc_directories <- c(
    root = "./",
    stat33b = "./stat33b/",
    stat133 = "./stat133/",
    practice = "./practice/"
)

docs <- list.files(doc_directories, pattern = "*.qmd$", full.names = TRUE)

# We look for all calls to library(...).
package_rgx <- "(?<=library\\()[:space:]*[:alpha:]([:alnum:]|\\.)*[:space:]*(?=\\))"

packages_used <- sapply(
    docs,
    \(path) stringr::str_extract_all(readr::read_file(path), package_rgx)) |>
    unlist(use.names = FALSE) |>
    unique()

cat("Checking .qmd dependencies...\n")

for (p in packages_used) {
    install_if_missing(p)
}
