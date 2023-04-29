locals {
  data_lake_bucket = "covid-datalake"
}

variable "project" {
  description = "Your GCP Project ID"
  default = "dtc-de-myzoomcamps23"
  type = string
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "US"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "capstone_covid_data"
}

variable "TABLE_NAME" {
  description = "BigQuery Table that raw data (from GCS) will be written to"
  type = string
  default = "covid_table"
}