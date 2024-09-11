---
layout: page_general
permalink: /features/integration-options
title: Integration Options
excerpt: ReDBox can seamlessly integrate with a range of institutional systems.
---

## Integration Options in ReDBox


This document outlines the various integration options available in the ReDBox platform. 
ReDBox is designed to seamlessly integrate with a range of institutional systems, enabling 
efficient data management and enhanced research workflows.

The integration options include a fully featured REST API, provisioner plugins for research 
services, publishing integrations for disseminating data, and robust lookup data functionalities.
These integrations help ensure that ReDBox can be tailored to meet the specific needs of your 
institution, fostering better data accuracy, streamlined processes, and improved collaboration
among researchers.

### REST API

ReDBox has a fully featured REST API that enables other systems to either modify information 
within the platform or retrieve information from it. This API facilitates seamless integration 
with various institutional systems, ensuring smooth data flow and interoperability.

#### Common Use Cases

- **Exporting Data**: The export API can be utilized to retrieve data from ReDBox for integration 
  with an institutional data lake or reporting system. This ensures that data within ReDBox 
  can be consolidated with other institutional data for comprehensive analysis and reporting.
- **Triggering Record Creation**: The API can trigger the creation of a record in ReDBox based on 
  an action performed in another system. For example, an RDMP can be automatically created in 
  ReDBox when a project grant is approved in the Research Information Management System (RIMS).
  This automation helps in maintaining data consistency and reducing manual effort.

### Provisioner Plugins

As part of ReDBox's workspace functionality, a variety of plugins are provided to provision 
research services such as storage or other online tools. These plugins not only incentivize 
researchers to complete their RDMPs but also help in linking the usage of these services to 
specific projects. Several provisioner plugins are available for configuration:

- **ServiceNow**: Integrates with the [ServiceNow](https://www.servicenow.com/) platform to 
  create and manage service requests.
- **REDCap**: Facilitates the provisioning of [REDCap](https://www.project-redcap.org/) projects 
  and resources.
- **Terraform**: Automates the provisioning of infrastructure using 
  [Terraform](https://www.terraform.io/).
- **GitLab**: Manages [GitLab](https://about.gitlab.com/) repositories and resources.
- **OMERO**: Integrates with [OMERO](https://www.openmicroscopy.org/omero/) for 
  managing image data.
- **LabArchives**: Connects with [LabArchives](https://www.labarchives.com/) for managing 
  lab notebooks and research data.

Additionally, many more plugins can be developed to extend the provisioning capabilities of 
ReDBox, making it highly adaptable to various research needs and institutional requirements.

<img src="{{ '/static/images/provisioner.jpg' | relative_url }}"
class="img-fluid border rounded mx-auto d-block"
alt="Diagram showing provisioners and example data flow.">

### Publishing Integrations

ReDBox aids in the publishing of data by providing configurable workflows for review and 
integration with [Datacite Fabrica's](https://doi.datacite.org/) API for DOI minting.
This facilitates the formal publication and dissemination of research data.
ReDBox also supports pushing records to institutional publication search and discovery portals.
The following portal systems are currently supported:

- **Figshare**: Integrates with [Figshare](https://figshare.com/) for publishing and managing 
  research outputs.
- **OAI-PMH Feed**: Supports any portals that can ingest records using the OAI-PMH protocol, 
  such as [Research Data Australia](https://researchdata.edu.au/).

Additional portal systems can be integrated with further development, ensuring broad 
compatibility with various publication platforms and maximizing the visibility and impact 
of research data.

### Lookup Data

One of ReDBox's powerful features is its ability to provide lookup functionality for 
institutional information, ensuring that records are filled out accurately. ReDBox supports 
two primary methods for integrating lookup data:

- **API Integration**: ReDBox can integrate with the APIs of source institutional systems, allowing
  users to search and suggest values directly from these systems. This real-time integration
  ensures that the most up-to-date information is available for record creation and management.
- **Ingesting Feeds**: ReDBox can ingest data feeds from source institutional systems using its REST 
  API. Once ingested, the internal search APIs can be used to suggest values to users, 
  facilitating accurate data entry and enhancing the overall user experience.

These lookup capabilities help maintain data integrity and streamline the process of filling 
out records within ReDBox.

