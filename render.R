# Render the Final Report

# --------- Authenticate ---------

# Note that creds need to be passed in the pull_request.yml or render-all.yml workflows first
googlesheets4::gs4_auth(
  token = gargle::credentials_service_account(
    path = "key.json", 
    scopes = "https://www.googleapis.com/auth/spreadsheets"
    )
)

rmarkdown::render('Final_Report.Rmd', output_format = c('html_document'))