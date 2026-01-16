locals {
  schemas = {
    bronze = {
      comment = "Raw landing zone for ingested data"
    }
    silver = {
      comment = "Cleaned and transformed data"
    }
    gold = {
      comment = "Business-level aggregated data"
    }
  }
}