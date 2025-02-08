# Until released, this needs to first be built locally, see buzzr directory and docs
# Install devtools if you haven't already
install.packages("devtools")

# Install the package from the local directory
devtools::install_local("../buzzr")

library(buzzr)

path <- "script.R"

# Lint an R file and get positive comments
lint_and_praise(path)