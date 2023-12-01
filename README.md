# BCDS_ToolBank

# overview of project
This repository contains analyses regarding a ToolBank usage and assessment survey distributed by the Baltimore Toolbank to its users. This survey and subsequent analyses were conducted in collaboration with the Johns Hopkins School of Public Health (in particular, the Baltimore Community Data Science course taught in the first and second quarter of the 2023-2024 academic year). The course instructors are Carrie Wright, Ava Hoffman, and Michael Rosenblum. The course instructor working on this specific project was Ava Hoffman, and the students working on this project were Tianxu Chen, Charlotte Clapham, and Haley Farrie. On the Baltimore Toolbank side, Noah Smock led this project. 

All analyses were conducted using R. The survey itself was conducted using google forms.

# Outline of repository 
The reposity contains The following documents:

- **Final_Report.Rmd**: This is an Rmd File that contains all the R code for the final version of the final report. It contains code for all data importing, cleaning, and analyses. It also contains the written portions of the report, highlighting key findings, etc. 
- **Final_Report.html**: This is the html- version of the report. This is an html file best used for viewing and presenting the results of the report. This file comes directly from the Final_Report.Rmd file, except the code is not visible here, but the plots and written findings are.
- **Preliminary word cloud.Rmd**: This is an Rmd file containing code to create a word cloud. This specific file focuses on the data that came from Noah's preliminary survey, but it can be applied to any other free-response sections.
- **Preliminary word cloud.Rmd**: This is the outputted image of the word cloud, that was created using the above code file.
- **.gitignore**: git ignore file-- this file is not particularly relevant for this repository, as the data comes directly from google sheets and we have no sensitive data directly uploaded in the code.


# Important notes on code
- regarding **Final_Report.Rmd**: As noted, the survey was conducted usinng google sheets. We used the **googlesheets4** package to read in the data from the survey directly from google sheets, as opposed to downloading the data. Anyone running the code will see that in the data import section (top of code), one needs to enter an email address. Specifically, one will need to use an email that has access to the survey results (Noah Smock has email- access to these results). This authentication step will require the person to sign into this email in order to then upload the data-- but this will only need to be done one time and future sign-ins on the same device should not be neccessary (If there is trouble with this, the following tutorial or other similar online websites might help: **https://www.digitalocean.com/community/tutorials/google-sheets-in-r**)
