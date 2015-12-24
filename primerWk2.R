files <- list.files("diet_data")
files[1]
files[2]

files_full <- list.files("diet_data", full.names=TRUE)

head(read.csv(files_full[3]))

andy_david <- rbind(Andy, read.csv(files_full[2]))
andy_david
