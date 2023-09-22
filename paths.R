library(dplyr)
library(stringr)

development <- FALSE

pre_box <- getwd() %>% str_remove("OneDrive.+|Documents.+|Box.+")

# inputs
path_credentials <- paste0(pre_box,"Box/credentials/MARS_redcap_api_key.R")
path_cxwalk <- paste0(pre_box, "Box/mhealth_data_management/MARS/MARS - data sharing/mars_visit_raw_datashare_20230510/redcap_crosswalk.rds")
path_id_check <- paste0(pre_box, "Box/MARS Curation Workspace/Questionnaire/Release v1.0.0/Inputs/dat_visit_dates_V1_only.rds")

# outputs
path_output_data <- paste0(pre_box, "Box/MARS Curated Data/Questionnaire/Release v1.0.0/Data for analysis/")

