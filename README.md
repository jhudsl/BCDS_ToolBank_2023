# Baltimore Community Data Science and Baltimore Toolbank Collaboration

## overview of project
This repository contains analyses regarding a ToolBank usage and assessment survey distributed by the Baltimore Toolbank to its users. This survey and subsequent analyses were conducted in collaboration with the Johns Hopkins School of Public Health (in particular, the Baltimore Community Data Science course taught in the first and second quarter of the 2023-2024 academic year). This project was completed December 2023. The course instructors were Carrie Wright, Ava Hoffman, and Michael Rosenblum. The course instructor working on this specific project was Ava Hoffman, and the students working on this project were Tianxu Chen, Charlotte Clapham, and Haley Farrie. On the Baltimore Toolbank side, Noah Smock led this project. 

All analyses were conducted using R. The survey itself was conducted using google forms.

## Outline of repository 
The repository contains all code and reports relating to this analysis. It contains the following documents:

- **Final_Report.Rmd**: This is an Rmd File that contains all the R code for the final version of the final report. It contains code for all data importing, cleaning, and analyses. It also contains the written portions of the report, highlight of key findings, etc. that are found in the html and pdf renderings of the report.
- **Final_Report.html**: This is the html- rendered version of the report. This is an html file best used for viewing and presenting the results of the report. This file comes directly from rendering the Final_Report.Rmd file-- the code is not visible here, but the plots and written findings are.
- **Preliminary word cloud.Rmd**: This is an Rmd file containing code to create a word cloud. This specific file focuses on the data that came from Noah's preliminary survey, but it can be applied to any other free-response sections.
- **Preliminary word cloud.Rmd**: This is the outputted image of the word cloud, that was created using the above code file, again, using free response from the preliminary survey.
- **.gitignore**: git ignore file-- this file helps maintain data security and privary on the back-end. Note that the survey data comes directly from google sheets and we have no sensitive data directly uploaded in the code.

## navigating the Final Report 
The final report first contains information regarding key findings from the analysis, presented in bullet points. This is followed by a section for particularly important/interesting visuals. After this key-findig section, the report goes through each section of the survey and gives an overview, both numerically and visually, of the responses from that section. There are tables throughout the report that give summaries of how respondants answered particular questions-- these are good places to look for additional key points/takeaways from the analysis that can be used for grant writing, etc. 

## Important notes on code
- **Reading in the data**: This step is done in the **Final_Report.Rmd** file. As noted, the survey was conducted using google sheets. We used the **googlesheets4** package to read in the data from the survey directly from google sheets, as opposed to downloading the data. This is an extra privacy measure, and it also allows the data to stay up-to-date with the responses rolling in. Anyone running the code will see that in the data import section (top of code), one needs to enter an email address. Specifically, one will need to use an email that has access to the survey results (Noah Smock has email- access to these results). This authentication step will require the person to sign into this email in order to then upload the data-- but this will only need to be done one time and future sign-ins on the same device should not be neccessary (If there is trouble with this, the following tutorial or other similar online websites might help: https://www.digitalocean.com/community/tutorials/google-sheets-in-r/ )
