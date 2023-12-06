# Render the Final Report

# To create the key, there is some funky spacing issues that need to be resolved.
# Take the key from the GSA and read it in:
# key <- jsonlite::fromJSON(readLines("key.json"))
# Then, write it back. This gets rid of spacing issues:
# write_json(key, path = "key_corrected.json")
# then copy the contents of key_corrected.json into the github secret!

# --------- Get secret filename ---------

# The filename is important - it can't just be called key.json. When you download
# the key, it will have the appropriate name. Save this as a secret on GitHub.

library(optparse)
library(googlesheets4)
# library(googledrive)

# option_list <- list(
#   optparse::make_option(
#     c("--filename"),
#     type = "character",
#     default = NULL,
#     help = "Google Service Account Key Filename",
#   )
# )
# 
# # Read the GH_PAT argument
# opt_parser <- optparse::OptionParser(option_list = option_list)
# opt <- optparse::parse_args(opt_parser)
# key_filename <- opt$filename
# 
# message(is.character(key_filename))

# --------- Authenticate ---------

# Note that creds need to be passed in the pull_request.yml or render-all.yml workflows first
# Sheet must be shared with service account!!
gs4_deauth()
gs4_auth(
  token = gargle::credentials_service_account(path = paste0(
    ".secrets/", grep(".json$", list.files(".secrets"), value = TRUE)
  ),
  scopes = "https://www.googleapis.com/auth/spreadsheets")
)

sheet_url <- 
  "https://docs.google.com/spreadsheets/d/1W5kgOFSJux4lqpwqwJ_h9tJnd5oTY3-wBs57cpkyM3U/edit#gid=1386397630"
sheet_dat_1 <- read_sheet(sheet_url)

#rmarkdown::render('Final_Report.Rmd', output_format = c('html_document'))