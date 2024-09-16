---
layout: page_general
permalink: /features/reporting
title: Reporting Options
excerpt: There are many options for creating reports in ReDBox
---

## ReDBox Reporting

ReDBox has been designed to capture metadata from a variety of sources to help institutions 
manage research data. While the intention of the system isn't to be a fully fledged 
reporting/business intelligence (BI) tool, it's important for the system to be able to 
provide some basic functionality as well as provide integration options for reporting tools 
so that more complex reports can be created. This document outlines the options currently 
available in ReDBox, how they can be used and any potential limitations with their approaches.

## Features

### Exports

ReDBox provides the ability to export record metadata by record type (e.g. RDMPs) and can 
filter down to a date range based on when the record was modified. 
The export functionality supports exporting to CSV or to JSON formats.

<img src="{{ '/static/images/reporting-exports.png' | relative_url }}"
class="img-fluid border"
alt="Export record metadata by record type">


The output produced contains all the metadata that is being captured in the system for each 
record and there's no ability to choose which fields are exported though this can be done as 
a post-processing task in the tool of your choice once the export is completed. 
As the metadata stored in ReDBox is not 
"[flat](https://www.techtarget.com/searchdatamanagement/definition/flat-file)" 
but the CSV output is, some columns contain 
JSON formatted strings to ensure all the metadata is present in the output. 

In general, the CSV output is more useful for work within a spreadsheet tool such as Excel. 
Most modern reporting/BI tools support JSON data sources and therefore the JSON output would 
be recommended for use with those sorts of systems.

### REST API

ReDBox includes a 
[REST API](https://redbox-mint.github.io/redbox-portal/additional-documentation/rest-api.html)
that has endpoints that give systems the ability to retrieve record 
metadata from ReDBox. A reporting/BI tool could use the APIs to query ReDBox for report generation 
or simply as a machine to machine method to export metadata for importation into the system.

### Report Screens

<img src="{{ '/static/images/reporting-report-screens.png' | relative_url }}" class="img-fluid border" alt="ReDBox includes some basic reporting functionality">

ReDBox includes some basic reporting functionality.
With this functionality it is possible to configure a basic query, define filter parameters and 
a basic table output. The functionality also provides the ability to export the output to a CSV.
The functionality was developed early in the development of the system and has a number of 
limitations currently:

- The source of the data used for exporting is the index built for searching. 
  The search index is generated from the source database and can sometimes be out of sync and 
  therefore what is displayed is not accurate. Ideally it should be using the database.
- There are a very limited number of options as to what the table columns can output. It can be 
  configured to generate HTTP links based on the data to support providing links to access records
  but all other data cannot be formatted and will show exactly as it is in the data source.
- While the table column output has the ability to generate a link that will be shown in the UI 
  report preview, it is not possible to format the content of the CSV export at all and hence the 
  HTML links will not be shown in the exports.

### Connecting Business Intelligence (BI) tools to the database

ReDBox uses a 
[MongoDB](https://www.mongodb.com/)
database, most BI/Reporting tools support this type of database as a 
datasource and therefore its possible to generate reports using this method.

There are however security implications, especially for QCIF managed ReDBox instances that are 
hosted outside an institution's network and therefore would require discussions regarding 
requirements and effort to configure to enable.

### Other options

In addition to the above, it is possible to customize ReDBox to the use case required by an 
institution. This might include:
- Sending data to a location within the institution. For example, outputting the metadata to 
  institutional storage or system
- Providing a custom endpoint to cater for the specific requirements of the system ingesting 
  the content. For example, a system may require the content to be provided to it in a specific 
  protocol and metadata format
