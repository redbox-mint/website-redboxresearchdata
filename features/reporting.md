---
layout: page_general
permalink: /features/reporting
title: Reporting Options
excerpt: There are many options for creating reports in ReDBox
---

## ReDBox Reporting

ReDBox is designed to capture and manage metadata from various sources, helping institutions efficiently manage research data. While ReDBox isn’t intended to serve as a full-scale reporting or business intelligence (BI) tool, it offers basic reporting capabilities and integration options for more advanced reporting tools.

Below, we outline the available reporting options in ReDBox and their functionalities.

## Features

### Exports

ReDBox provides the ability to export record metadata by record type (e.g. RDMPs) and can filter down to a date range based on when the record was modified. The export functionality supports exporting to CSV or to JSON formats.

{% capture figure_src_reporting_exports %}{{ '/static/images/reporting-exports.png' | relative_url }}{% endcapture %}
{% include figure_image.html src=figure_src_reporting_exports max-width="400px" alt="Export record metadata by record type" caption="Export record metadata by record type" %}

- **CSV Exports**: Ideal for use in spreadsheet tools like Excel. The exported CSV file contains all available metadata for each record, though users cannot currently select specific fields during the export process. You can refine the data post-export in your preferred tool.

- **JSON Exports**: Recommended for modern BI tools that support JSON data sources. Since ReDBox’s metadata isn’t flat, some columns in the CSV output contain JSON strings to preserve data integrity.

### REST API

ReDBox provides a fully-featured [REST API](https://redbox-mint.github.io/redbox-portal/additional-documentation/rest-api.html) with endpoints to retrieve metadata directly from the platform. Reporting or BI tools can use these APIs to query ReDBox for generating reports or to extract metadata for import into other systems.

### In-Platform Reporting

ReDBox includes a built-in reporting interface that allows users to explore and extract insights from their metadata without needing external BI tools or technical expertise. This feature allows users to:

- Create simple queries
- Define filter parameters
- Generate basic table outputs
- Export results to CSV

{% capture figure_src_reporting_screens %}{{ '/static/images/reporting-report-screens.png' | relative_url }}{% endcapture %}
{% include figure_image.html src=figure_src_reporting_screens max-width="800px" alt="ReDBox includes some basic reporting functionality" caption="ReDBox includes some basic reporting functionality" %}

#### Key Features:

- **Live Data Queries**: Reports are generated from live data rather than an indexed cache, ensuring the most up-to-date information is always available when running a report.

- **Field-Level Filtering**: Users can apply filters across various metadata fields — including record type, workflow stage, contributor, creation date, and institution-specific metadata — to target exactly the records they need.

- **Customisable Tabular Views**: Results are displayed in a configurable table format. Fields shown in the table can be tailored during system setup to include the most relevant data points for your institution.

- **CSV Export**: Report data can be exported in CSV format for analysis in spreadsheet tools or for use in institutional reporting pipelines.

- **Hyperlinked Records**: Where configured, table cells can include hyperlinks that lead directly to the associated ReDBox record, enabling quick access for review or follow-up action.

#### Current Limitations:

- **Static Column Configuration**: While the report interface can be configured by administrators to show specific fields, users cannot dynamically select or deselect columns at runtime.

- **Limited Formatting in Export**: CSV exports are plain-text and do not include advanced formatting or hyperlinks present in the web interface.

- **No Native Aggregation**: The built-in reporting tool does not support aggregations (e.g., counts, groupings, or charts). Users can perform these calculations externally after exporting the data.

#### Common Use Cases:

- **Workflow Monitoring**: Generate a list of records currently in a specific workflow stage (e.g., "Submitted", "HDR Supervisor Approval").

- **Data Completeness Checks**: Identify RDMPs or datasets missing required metadata such as ethics approval or storage location.

- **Ownership and Custodianship Views**: Filter by record owner or data steward to support institutional reporting on responsibilities.

### Integration with Business Intelligence (BI) tools

ReDBox uses a [MongoDB](https://www.mongodb.com/) database, which is compatible with most BI and reporting tools as a data source. This makes it possible to generate complex reports using external tools.

However, for QCIF-managed ReDBox instances hosted outside an institution’s network, additional security configurations may be necessary, requiring further discussions on setup and access.

### Advanced Customisation

ReDBox can be customised to meet specific institutional reporting needs, offering flexibility beyond the built-in features.

Customization options include:

- **Sending Data to Institutional Systems**: Metadata can be exported and sent to an institutional storage system or database, enabling further analysis or integration with local tools.

- **Custom Endpoints**: Create tailored endpoints to serve specific data requirements, such as outputting metadata in a custom format or protocol for external system ingestion.

## Summary

ReDBox offers a variety of basic and advanced reporting options, from direct exports and in-platform reports to full integration with external BI tools. While the built-in reporting features are suitable for straightforward data analysis, the platform’s flexibility and customization options allow for integration with more sophisticated reporting systems to meet your institution’s needs.
