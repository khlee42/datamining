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
date[9]=paste0(date[9],'*')
date[15]=paste0(date[15],'*')
topic = c(
  'Introduction to Data Analytics',
  'R essentials',
  'Data visualization 1',
  'Data wrangling',
  'Data visualization 2',
  'Join data',
  'Tidy and import data',
  'Modeling & Mock exam',
  'Midterm exam',
  'Linear regression',
  'Logistic regression',
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
lecture_links <- c(
  "./lecture/w01-welcome/w01-welcome.html",
  "./lecture/w02-r/w02-r.html",
  "./lecture/w03-data-viz-1/w03-data-viz-1.html",
  "./lecture/w04-data-wrangle/w04-data-wrangle.html",
  "./lecture/w05-data-viz-2/w05-data-viz-2.html",
  "./lecture/w06-data-join/w06-data-join.html",
  "./lecture/w07-tidy-and-import-data/w07-tidy-and-import-data.html",
  "./lecture/w08-modeling/w08-modeling.html",
  NA,
  "./lecture/w10-linear-reg/w10-linear-reg.html",
  "",
  "",
  "",
  "",
  NA
)

lab_links <- c(
  "./lab/lab-01/lab-01-hello-r.html",
  "./lab/lab-02/lab-02-r.html",
  "./lab/lab-03/lab-03-data-viz-1.html",
  "./lab/lab-04/lab-04-data-wrangle.html",
  "./lab/lab-05/lab-05-data-viz-2.html",
  "./lab/lab-06/lab-06-data-join.html",
  "./lab/lab-07/lab-07-tidy-and-import-data.html",
  NA,
  NA,
  "./lab/lab-08/lab-08-linear-reg.html",
  "",
  "",
  "",
  "",
  NA
)

dc_links <- c(
  "./exercise/dc1.html",
  "./exercise/dc2.html",
  "./exercise/dc3.html",
  "./exercise/dc4.html",
  "./exercise/dc5.html",
  NA,
  "./exercise/dc6.html",
  "./exercise/dc7.html",
  NA,
  "./exercise/dc8.html",
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
  './homework/hw1/hw1.html',
  NA,
  NA,
  NA,
  NA,
  "./homework/hw2.html",
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
  "https://canvas.wayne.edu/courses/134413/quizzes/340763",
  "https://canvas.wayne.edu/courses/134413/quizzes/318577",
  NA,
  NA,
  NA,
  NA,
  NA,
  "./exam/final_instruction.html"
)

due_dc <- list(
  release=sapply(which(is.na(dc_links) %in% c(FALSE)), week_after),
  due=sapply(which(is.na(dc_links) %in% c(FALSE)), due_in, due=1)
)
due_hw <- list(
  release=sapply(which(is.na(hw_links) %in% c(FALSE)), week_after),
  due=sapply(which(is.na(hw_links) %in% c(FALSE)), due_in, due=2)
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