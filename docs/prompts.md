# Prompts Used

The following Copilot/ChatGPT prompts were used to help with creating this project.

## Base Setup

In VSCode, using Copilot:

**Prompt**
```
Can you add a project that is a valid R package with build and usage instructions in the readme that uses the lintr package to track software best practices and when run writes a positive comment to the terminal for every best practice applied to the r file it is used on
```

**Response**
```
Plan
Create the R package structure:

Create necessary directories: R, man, tests, etc.
Create essential files: DESCRIPTION, NAMESPACE, README.md, etc.
Add lintr as a dependency:

Update the DESCRIPTION file to include lintr.
Create a function to run lintr and output positive comments:

Write an R script in the R directory that uses lintr to check for best practices and outputs positive comments.
Write build and usage instructions in README.md:

Include instructions on how to install the package, run the linting function, and interpret the output.
Code
1. Create the R package structure
md
2. Update DESCRIPTION file
lintr
3. Create the linting function in R/lint_positive.R
}
4. Write build and usage instructions in README.md
)
Usage
To use the linting function, run the following commands in R:

)
Example
)
This will output positive comments for each best practice applied in the specified R file.

mypackage/ ├── DESCRIPTION ├── NAMESPACE ├── README.md ├── R/ │ └── lint_positive.R ├── man/ └── tests/

```
This setup provides a basic R package structure with a function to lint R files and output positive comments, along with build and usage instructions in the README.md file.

**Response in original formatting**

**Plan**
1. Create the R package structure:
    - Create necessary directories: R, man, tests, etc.
    - Create essential files: DESCRIPTION, NAMESPACE, README.md, etc.

2. Add `lintr` as a dependency:

    -Update the `DESCRIPTION` file to include `lintr`.

3. Create a function to run lintr and output positive comments:

    - Write an R script in the R directory that uses `lintr` to check for best practices and outputs positive comments.

4. Write build and usage instructions in `README.md`:

    - Include instructions on how to install the package, run the linting function, and interpret the output.

**Code**

**1. Create the R package structure**
```shell
mkdir mypackage
cd mypackage
mkdir R man tests
touch DESCRIPTION NAMESPACE README.md
```
**2. Update `DESCRIPTION` file**
```shell
Package: mypackage
Type: Package
Title: A Package to Track Software Best Practices Using lintr
Version: 0.1.0
Author: Your Name
Maintainer: Your Name <your.email@example.com>
Description: This package uses lintr to track software best practices and outputs positive comments for each best practice applied.
License: MIT
Imports: lintr
```
**3. Create the linting function in `R/lint_positive.R`**
```r
#' Lint and Praise
#'
#' This function uses lintr to check for best practices and outputs positive comments.
#' @param file The R file to lint.
#' @export
lint_and_praise <- function(file) {
  library(lintr)
  
  lintr_output <- lint(file)
  
  if (length(lintr_output) == 0) {
    message("Great job! No linting issues found.")
  } else {
    for (issue in lintr_output) {
      message("Keep up the good work! Consider improving: ", issue$message)
    }
  }
}
```

**4. Write build and usage instructions in `README.md`**
```markdown
# mypackage

This package uses `lintr` to track software best practices and outputs positive comments for each best practice applied.

## Installation

To install the package, use the following commands in R:

```r
# Install devtools if you haven't already
install.packages("devtools")

# Install the package from the local directory
devtools::install_local("path/to/mypackage")
```

**Usage**

To use the linting function, run the following commands in R:
```r
library(mypackage)

# Lint an R file and get positive comments
lint_and_praise("path/to/your_script.R")
``` 

**Example**
```r
library(mypackage)

# Lint an R file and get positive comments
lint_and_praise("path/to/your_script.R")
```

This will output positive comments for each best practice applied in the specified R file.

**Final Directory Structure**
```
mypackage/ ├── DESCRIPTION ├── NAMESPACE ├── README.md ├── R/ │ └── lint_positive.R ├── man/ └── tests/

```

This setup provides a basic R package structure with a function to lint R files and output positive comments, along with build and usage instructions in the README.md file.