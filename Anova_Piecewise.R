# Define vectors with numerical values for groups a, b, c, and d
a=c(55,49,42,21,52)
b=c(61,112,30,89,63)
c=c(42,97,81,95,92)
d=c(169,137,169,85,154)

# Concatenate the vectors into a single vector w
w=c(a,b,c,d)

# Calculate the length of the combined vector w
length(w)

# Create vectors with labels corresponding to each group
a1=rep("a",length(a))
b1=rep("b",length(b))
c1=rep("c",length(c))
d1=rep("d",length(d))

# Combine the group labels into a single vector t
t=c(a1,b1,c1,d1)

# Convert the vector t into a factor for categorical analysis
t=factor(t)

# Perform an ANOVA to analyze the variance between groups
anova=aov(w~t)

# Print a summary of the ANOVA results
summary(anova)

# Create a boxplot to visualize the distribution of data across groups
boxplot(w~t)

# Perform pairwise t-tests for multiple comparisons
pairwise.t.test(w,t)

# Perform Tukey's Honestly Significant Difference (HSD) test for multiple comparisons
TukeyHSD(anova,conf.level = 0)

# Install the DescTools package if it's not already installed
install.packages("DescTools")

# Load the DescTools package for additional statistical functions
library(DescTools)

# Perform Scheffe's test for multiple comparisons
ScheffeTest(anova)
