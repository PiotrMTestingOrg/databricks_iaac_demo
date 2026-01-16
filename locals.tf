locals {
  schemas = {
    bronze = {
      comment = "Raw landing zone for ingested data"
    }
    silver = {
      comment = "Cleaned and transformed data"
    }
    reporting = {
      comment = "Business-level aggregated data"
    }
  }
}