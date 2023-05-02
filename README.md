# Analysis of Covid Data around the world :earth_africa:

Since the beginning of 2020, the coronavirus has changed the world. With scary news also came the doubters. 
That makes it all the more important to understand the data. 
So for my capstone project for the [Data Engineering Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp) by [DataTalks Club](https://datatalks.club/), I chose to analyze a global corona dataset.
<br>
<br>
With this project I aim to built an end-to-end orchestrated data pipeline. 
My dataset is publicly available and provided by [Our World in Data](https://github.com/owid/covid-19-data). 
<br>
<br>
## Used Technologies 
For this project I decided to use the following tools:

- Prefect - for orchestration; <br>

![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20prefect%201.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20prefect%201.1.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20prefect%202.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20prefect%202.1.png)

- Terraform - as Infrastructure-as-Code (IaC) tool; <br>
- Google Compute Engine - as a virtual machine; <br>
- Google Cloud Storage (GCS) - for storage as Data Lake; <br>
- Google BigQuery - for the project Data Warehouse; <br>
- dbt - for the transformation of raw data in refined data; <br>

![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%201.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%202.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%203.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%204.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%205.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%206.png)
![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/for%20project%20dbt%207.png)

- Google Looker studio - for visualizations. <br>

I built a data pipeline that pulls Corona data daily from GitHub, loads it into Google Cloud Storage using Prefect, 
and then into BigQuery. Using dbt Labs, the raw data is transformed and then visualized in Looker Studio.

## Problem Description

The data set is a very detailed time series. I decided to look at the development of new corona cases over the course of the year, 
on the one hand. In doing so, I would like to compare the development in Germany with the rest of the world. 
Furthermore, I am interested in the vaccination rate in a worldwide comparison and whether there is a correlation between poverty and excess mortality.
<br>
<br>

## Pipeline

![alt text](https://raw.githubusercontent.com/sandeep92134/DTC-DE-ZOOMcamp_project/main/images/pipeline.png)

## Structure of the Repo
- dbt: all directories, .yml, .scl files, etc. for the transformations in dbt
- flows: .py files for the prefect flows
- images: used images in the repo
- terraform: terraform files

## Visualizations

The interactive dashboards [can be found here](https://lookerstudio.google.com/reporting/7e28d737-d0e6-4b7e-a6b8-6edb1aab7137/page/MLmOD).
![alt text](photo)

