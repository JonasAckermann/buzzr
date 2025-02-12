# Until released, this needs to first be built locally, see buzzr directory and docs
# Install devtools if you haven't already
#install.packages("devtools")

# Install the package from the local directory
# Assumes your working directory is the repository root
current_path <- getwd()
# Ensures something weird related to namespace files, who knows what that is
devtools::document(paste0(current_path, "/buzzr"))
devtools::install_local(paste0(current_path, "/buzzr"), force = TRUE)


library(buzzr)

path <- "script.R"

# Lint an R file and get positive comments
lint_and_praise("examples/script.R")
