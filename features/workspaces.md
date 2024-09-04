---
layout: page_general
permalink: /features/workspaces
title: Workspaces
excerpt: Workspaces provide researchers access to external services from ReDBox
---

## Workspaces in ReDBox

Workspaces in ReDBox are a record type that describes a service 
a researcher is using in their research project.

This feature integrates with these services through a provisioner 
framework to automate the provisioning process.

### Purpose and Benefits

- Incentivizes the creation of Research Data Management Plans (RDMPs)
- Streamlines the provisioning process with pre-filled information

### Accessing the Workspaces Feature

1. Navigate to the RDMP Form: Access the RDMP form within ReDBox.
2. Locate the Workspaces Tab: Find the tab listing all configured workspaces.

## Key Functionalities

- **Pre-Filled Information**: Saves time by using data from the RDMP to fill in the workspace form.
- **Custom Fields**: Enter specific details required for the service being provisioned.

### Customization Options

- **Adjusting Storage Size**: For storage-related workspaces, specify the required storage size.
- **Adding Additional Details**: Include any additional information relevant to the workspace.

### Linkage Between RDMP and Workspace

- **Associated Workspaces**: The linkage between the RDMP and the workspace allows 
  displaying associated workspaces in the RDMP record.
- **Workspaces Dashboard**: Researchers can view all their workspaces and the related 
  RDMP through a dedicated dashboard.

### Pushing RDMP Metadata to Services

- **Provisioning Framework**: If the service being provisioned supports it, 
  the provisioning framework can push RDMP metadata to the service to assist 
  maintainers of the service.

## Using the Workspaces Feature

1. Creating an RDMP:

    1. Fill out the RDMP form with the necessary details about your research project.
    2. Save the RDMP to proceed to the workspaces section.

2. Selecting and Opening a Workspace:

    1. In the RDMP form, navigate to the Workspaces tab.
    2. Select the desired workspace from the list.

   <img src="{{ '/static/images/workspaces-open.png' | relative_url }}"
   class="img-fluid border"
   alt="Select the desired workspace from the list">

3. Filling Out the Workspace Form:

    1. Review the pre-filled information from the RDMP.
    2. Enter any additional required information 
       (e.g., storage size for a research data storage workspace).

    <img src="{{ '/static/images/workspaces-additional-info.png' | relative_url }}"
    class="img-fluid border"
    alt="Enter any additional required information for the workspace">

    3. Save the form to initiate the provisioning process.
    4. View details about the status of the workspace either in the 
       RDMP or the workspaces dashboard

    <img src="{{ '/static/images/workspaces-list.png' | relative_url }}"
    class="img-fluid border"
    alt="View details about the status of the workspaces">


## Case Study: ServiceNow Provisioner

The ServiceNow provisioner is one of the most popular provisioners in ReDBox.
It allows creating Service Catalog requests within the ServiceNow platform, 
streamlining the process for researchers and service maintainers.

### Features

- **Automated Request Creation**: Automatically creates Service Catalog requests in 
  ServiceNow based on the information in the RDMP and workspace forms.
- **Pre-Filled Information**: Utilizes RDMP data to pre-fill request forms in ServiceNow, 
  reducing manual entry and errors.
- **Metadata Push**: Pushes relevant RDMP metadata to ServiceNow to assist service
  maintainers with additional context and information about the research project.
- **Status Tracking**: Allows researchers to track the status of their Service Catalog requests 
  directly from the ReDBox interface.

### Implementation Details

1. Service Catalog Types Configuration in ServiceNow:
    - Define and configure the Service Catalog types within the ServiceNow platform.
2. Request Forms Configuration in ReDBox:
    - Configure the corresponding request forms in ReDBox for each Service Catalog type.
3. Updating Metadata via REST API:
    - ServiceNow is provided with an identifier for the workspace.
    - ServiceNow can update the metadata of the record to provide status and implementation 
      information using ReDBox's REST API.

