
setwd('C:/Users/ilyan/OneDrive - mmu.edu.my/Degree/Statistical Data Analysis/Assignment')
data = read.csv("Sample 7.csv", header = TRUE, sep = ",")


colnames(data)[colnames(data) == "Physical.Act........hrs.per.week."] = "Physical_Act"
colnames(data)[colnames(data) == "Reaction.Time...sec."] = "Reaction_Time"

# Scatter plot for physical activity and reaction time
plot(Reaction_Time~Physical_Act, data=data,
     main = "Reaction Time by Physical Activity",
     xlab = "Physical Activity (hrs per week)",
     ylab = "Reaction Time (sec)")
fit = lm(Reaction_Time ~ Physical_Act, data = data)
abline(fit, col = "red")

cor(data$Physical_Act, data$Reaction_Time)

boxplot(Reaction_Time~Gender, data=data,  
        main ="Reaction Time by Gender",
        xlab="Gender",
        ylab="Reaction Time (sec)")

# Correlation test for physical activity and reaction time
cor.test(data$Physical_Act, data$Reaction_Time)
cor(data$Physical_Act, data$Reaction_Time)
cor(data$Physical_Act, data$Reaction_Time)^2


# T-test for gender and reaction time
t.test(Reaction_Time ~ Gender, data=data)