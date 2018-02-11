# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

### This module uses the default module marker
### Why change it?
#!--Figure1 BEGIN
library(tidyverse)
fig1 <- tibble(x = rnorm(100), y = runif(100)) %>%
  ggplot(aes(x, y)) +
  geom_point()
print(fig1)
#!--Figure1 END


#!--Figure2 BEGIN
library(tidyverse)
fig2 <- tibble(x = rnorm(100), y = rnorm(100)) %>%
  ggplot(aes(x, y)) +
  geom_point(color = "Red")
print(fig2)
#!--Figure2 END


### This module uses an alternative module_marker "#<<<", but
### don't.  It doesn't make sense
#<<<hello2 Begin
hello2 <- function() {
  print("World, hello!")
}
#<<<hello2 End
