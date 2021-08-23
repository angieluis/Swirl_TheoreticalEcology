# Path to data
.datapath <- file.path(path.package('swirl'), 'Courses',
                       'Swirl_TheoreticalEcology', 'Looking_at_Data',
                       'plant-data.txt')
# Read in data
plants <- read.csv(.datapath, strip.white=TRUE, na.strings="")

# Remove annoying columns
.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
names(plants) <- c('Scientific_Name', 'Duration', 'Active_Growth_Period',
                   'Foliage_Color', 'pH_Min', 'pH_Max',
                   'Precip_Min', 'Precip_Max',
                   'Shade_Tolerance', 'Temp_Min_F')

# Make some factors
plants$Scientific_Name <- factor(plants$Scientific_Name)
plants$Duration <- factor(plants$Duration)
plants$Active_Growth_Period <- factor(plants$Active_Growth_Period)
plants$Foliage_Color <- as.character(plants$Foliage_Color)
