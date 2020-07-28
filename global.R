## @knitr global
start <- as.Date("2020-09-02")

# Module start date generator
week_after <- function(adv){
  wdate <- start + 7*(adv-1)
  wdate <- format(wdate, format="%m/%d")
  wdate
}

# due date generator
due_in <- function(adv, due){
  tmp2 <- start + 7*(adv-1+due)
  tmp2 <- format(tmp2, format="%m/%d")
  tmp2
}

# Module detail
n = 1:15
date = week_after(n)
topic = c(
  'Intro to data mining and toolkit',
  'R basics, R markdown, workflow',
  'Data visualization 1 (ggplot2)',
  'Exploratory data analysis (dplyr)',
  'Data transformation (dplyr)',
  'Data visualization 2 (ggplot2)',
  'Tidy data (tidyr) & data importing (util)',
  'Joining data (dplyr)',
  'Midterm exam',
  'Regression 1 (Univariate)',
  'Regression 2 (Multivariate, model selection)',
  'Decision tree',
  'Clustering',
  'Tidytext and sentiment analysis',
  'Final exam'
)

## extra topic
# Predictive vs. confirmatory analysis
# Causation vs. correlation
# Hypothesis testing
# Overfitting and cross-validation
# Coding style
# More on R data type: factor/String/Date

# URL must include https or http
slide_links <- c(
  "./slide/slide1.html",
  "./slide/slide2.html",
  "./slide/slide3.html",
  "./slide/slide4.html",
  "./slide/slide5.html",
  "./slide/slide6.html",
  "./slide/slide7.html",
  "./slide/slide8.html",
  NA,
  "./slide/slide9.html",
  "./slide/slide10.html",
  "./slide/slide11.html",
  "./slide/slide12.html",
  "./slide/slide13.html",
  NA
)

dc_links <- c(
  "./assignment/dc1.html",
  "./assignment/dc2.html",
  "./assignment/dc3.html",
  "./assignment/dc4.html",
  "./assignment/dc5.html",
  NA,
  "./assignment/dc6.html",
  "./assignment/dc7.html",
  NA,
  "./assignment/dc8.html",
  NA,
  NA,
  NA,
  NA,
  NA
)

hw_links <- c(
  NA,
  NA,
  NA,
  NA,
  NA,
  './assignment/hw1.html',
  NA,
  NA,
  NA,
  NA,
  "./assignment/hw2.html",
  NA,
  NA,
  NA,
  NA
)

exam_links <- c(
  NA,
  NA,
  NA,
  NA,
  NA,
  NA,
  NA,
  NA,
  "./exam/midterm_instruction.html",
  NA,
  NA,
  NA,
  NA,
  NA,
  "./exam/final_instruction.html"
)

due_dc <- list(
  release=sapply(which(is.na(dc_links) %in% c(FALSE)), week_after),
  due=sapply(which(is.na(dc_links) %in% c(FALSE)), due_in, due=7)
)
due_hw <- list(
  release=sapply(which(is.na(hw_links) %in% c(FALSE)), week_after),
  due=sapply(which(is.na(hw_links) %in% c(FALSE)), due_in, due=14)
)

exam_on_sat=1+(7*(which(is.na(exam_links) %in% c(FALSE))-1)+3)/7
due_ex <- list(
  release=sapply(exam_on_sat, week_after),
  due=sapply(exam_on_sat, due_in, due=1/7)
)



# ```{css, echo=FALSE}
# p {
#  font-size: 18px;
# }
# ```