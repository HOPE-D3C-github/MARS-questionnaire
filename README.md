# MARS Questionnaire Code
This repo contains all deidentified code used to curate the MARS questionnaire data.

## Code
  - **MARS REDCap Data Curation.R**: primary R script for data curation 
    + **paq_clean.R**: separate function to summarize specifically the GPAQ instrument [as given by the WHO](https://www.who.int/publications/m/item/global-physical-activity-questionnaire)
    + **summary_codebook_funs.R**: all other functions used in the primary R script
      +  *scale_mean*: take the mean of the provided items given a participant answered at least 70% of questions (percentage based on rule of thumb; can be adjusted)
      +  *scale_sum*: take the sum of the provided items given a participant answered all questions
      +  *scale_sum_nida*: functionally the same as *scale_sum*
      +  *update_codebook*: add a new variable to the codebook; generally used when summary variables are created in the data
      +  *recode_scale*: update a variable in the codebook that has been reverse coded or otherwise recoded in the data
      +  *add_skip*: use skip logic to replace NA values with "-99" in the data when a question was skipped. Additionally, add a "-99" option to the codebook for these questions
      +  *codebook_summary*: add frequency counts, ranges, and means to variables in codebook where applicable

## Documentation
  - **MARS REDCap ADO.qmd**: Analytical Dataset Orientation for the curated data 
