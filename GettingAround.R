




# for me to turn into file that can be downloaded:
set_lesson("Basic_Building_Blocks/lesson.yaml")
pack_course()



## For students:

# first time
install.packages("swirl")

# every time
library(swirl)

# move the file to wherever you want your class files
# set that as the default working directory

# uninstall_course("Swirl_TheoreticalEcology") # if need to uninstall last version first
# install_course(swc_path="/Users/angela.luis/Documents/Teaching/My Swirl Courses/Swirl_TheoreticalEcology.swc")

install_course(swc_path="Swirl_TheoreticalEcology.swc")
swirl()
# what call you?

# Choose 1: Intro to R

