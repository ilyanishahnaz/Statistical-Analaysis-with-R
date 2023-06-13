#QUESTION 1
# Read the data from the CSV file
data <- read.csv("sample 7.csv")

# Calculate the mean of the column "Reaction Time (sec)"
mean_value <- mean(data$Reaction.Time...sec)

# Calculate the median of the column "Reaction Time (sec)"
median_value <- median(data$Reaction.Time...sec)

# Print the mean and median
cat("Mean of Reaction Time:", mean_value, "\n")
cat("Median of Reaction Time:", median_value, "\n")




#QUESTION 2

# Read the CSV file
data <- read.csv("sample 7.csv")

# Extract the "reaction time" column
reaction_time <- data$Reaction.Time...sec

# Sort the reaction time column in ascending order
sorted_reaction_time <- sort(reaction_time)

# Find the index where 30% of the data is greater than
index <- ceiling(length(sorted_reaction_time) * 0.3)

# Get the value at the calculated index
threshold_value <- sorted_reaction_time[index]

# Print the result
print(paste("The value where 30% of the data is greater than is:", threshold_value))



#QUESTION 3

