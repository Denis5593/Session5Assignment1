# 1. How many vowels are there in the names of USA States?

library(stringr)
str_count(states,pattern = '[aeiouAEIOU]' )

# vector of vowels
vowels = c("a", "e", "i", "o", "u")

# vector for storing results
num_vowels = vector(mode = "integer", length = 5)

# calculate number of vowels in each name
for (j in seq_along(vowels)) {
  num_aux = str_count(tolower(states), vowels[j])
  num_vowels[j] = sum(num_aux)
}

# add vowel names
names(num_vowels) = vowels

# total number of vowels
num_vowels

# 2. Visualize the vowels distribution.

barplot(num_vowels, main = "Number of vowels in USA States names",
        ylim = c(0, 80))
