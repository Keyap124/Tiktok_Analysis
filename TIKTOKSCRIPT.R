getwd()
tiktok_data <- read.csv("Top 100 tiktokers in 2025.csv")
# Load necessary library
library(readr)  # This helps read CSV files
# Read the CSV file
tiktok_data <- read.csv("Top 100 tiktokers in 2025.csv")
# View the first few rows to make sure data is working 
head(tiktok_data)

#5 queries down below 
subset(tiktok_data, Uploads > 10000) #shows influencers with more than 10,000 uploads
subset(tiktok_data, Likes > 4000000000) #shows influencers with more than 4B+ likes 
subset(tiktok_data, Followers > 100000000) #shows influencers with more than 100M+ followers 


#used tapply to find max number of uploads for influencers with more than 3B+ likes 
tapply(tiktok_data[tiktok_data$Likes > 3000000000, ]$Uploads, 
       tiktok_data[tiktok_data$Likes > 3000000000, ]$Likes, 
       max)
# Create a table of follower counts
follower_counts <- table(tiktok_data$Followers)

# Sort the table in descending order and get the top 10 most common follower counts
top_10_follower_counts <- head(sort(follower_counts, decreasing = TRUE), 10)

# Display the result
print(top_10_follower_counts)


#table that shows influencers separated by content and like category 
table(tiktok_data$Content_Category,tiktok_data$Likes_Category)

# Create a table to count the number of influencers by Likes and Following
table(tiktok_data$Likes, tiktok_data$Following)




#four plots down below 

#scatterplot
plot(tiktok_data$Followers, tiktok_data$Likes,
     main = "Followers vs. Likes",
     xlab = "Followers",
     ylab = "Total Likes",
     col = "blue")
# scatter plot shows likes vs total followers 
# x-axis is followers, y-axis is total likes 
#color of coordinates is blue 
#no linear connection between likes and followers 

#boxplot
#set ranges for top 10 influencers and bottom 10 influencers 
boxplot(tiktok_data$Uploads[tiktok_data$Rank <= 10],
        tiktok_data$Uploads[tiktok_data$Rank > 90],
        names = c("Top 10", "Bottom 10"),
        main = "Uploads: Top 10 vs. Bottom 10 Influencers",
        col = c("lightgreen", "orange"))
#x-axis has two categories, top 10 and bottom 10
#light green represents top 10 and orange represents bottom 10 
#the mean uploads of the top followers is less than the mean uploads of bottom 10 followers 
#top 10 followers has max amount of uploads and min amount of uploads 

#barplot
# Subset data for influencers with more than 5 billion likes
high_likes_uploads <- subset(tiktok_data, tiktok_data$Likes >= 4000000000, select = c(Username, Uploads))

barplot(high_likes_uploads$Uploads, 
        names.arg = high_likes_uploads$Username, 
        main = "Upload Distribution for Influencers with 4B+ Likes", 
        xlab = "Influencer", 
        ylab = "Number of Uploads", 
        col = "green",
        las = 2)
#barplot showing upload distribution for influencers with 4B+ likes 
#x-axis shows the six different influencers with 4B+ likes 
#y-axis shows the number of uploads ranging from 0 to 30,000 (increments of 5000)
#las is to rotate the labels of x-axis so they could all fit on the screen 


#mossaic plot
# Define colors for the plot
colors <- c('red', 'blue', 'cyan')

# Categorize Followers (Low, Medium, High)
tiktok_data$Follower_Category <- cut(tiktok_data$Followers, 
                                     breaks = c(0, 50000000, 100000000, Inf), 
                                     labels = c("Low (<50M)", "Medium (50M-100M)", "High (>100M)"))

# Categorize Uploads (Low, Medium, High)
tiktok_data$Upload_Category <- cut(tiktok_data$Uploads, 
                                   breaks = c(0, 1000, 5000, Inf), 
                                   labels = c("Low (<1K)", "Medium (1K-5K)", "High (>5K)"))

# Generate mosaic plot
mosaicplot(tiktok_data$Follower_Category ~ tiktok_data$Upload_Category, 
           xlab = 'Follower Category', 
           ylab = 'Upload Category', 
           main = "Mosaic Plot of Followers vs Uploads", 
           col = colors, 
           border = "black")
#y-axis consists of three upload categories, high >5k, medium 1-5k, low <1k
#x-axis consists of three follower categories, low(<50M), medium (50M-100M), high(>100M)


      









