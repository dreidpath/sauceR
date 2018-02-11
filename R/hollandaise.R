##############################################################
#                   EXAMPLES OF MODULES                      #
# This file contains three potential modules:                #
# #!--Figure1                                                #
# #!--Figure2                                                #
# #<<<hello2                                                 #
#                                                            #
# The first two modules are marked with the default module   #
# marker `#!--`.  The last potential module is marked using  #
# a new marker `#<<<`                                        #
##############################################################


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
