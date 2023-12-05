# Render the Final Report

# To create the key, there is some funky spacing issues that need to be resolved.
# Take the key from the GSA and read it in:
# key <- jsonlite::fromJSON(readLines("key.json"))
# Then, write it back. This gets rid of spacing issues:
# write_json(key, path = "key_corrected.json")
# then copy the contents of key_corrected.json into the github secret!

# --------- Authenticate ---------

# Note that creds need to be passed in the pull_request.yml or render-all.yml workflows first
googlesheets4::gs4_auth(
  token = gargle::credentials_service_account(
    path = "key.json", 
    scopes = "https://www.googleapis.com/auth/spreadsheets"
    )
)

rmarkdown::render('Final_Report.Rmd', output_format = c('html_document'))