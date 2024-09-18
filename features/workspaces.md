---
layout: page_general
permalink: /features/workspaces
title: Workspaces
excerpt: Workspaces provide researchers access to external services from ReDBox
---

## Workspaces in ReDBox

Workspaces in ReDBox provide seamless access to external services that researchers need for their projects.

By leveraging ReDBox’s provisioner framework, workspaces automate the provisioning process, reducing manual 
effort and ensuring smooth integration with various research tools and services.

Some of the benefits of workspace integration are:

- **Encourages RDMP Creation**: Simplifies the process of creating Research Data Management Plans (RDMPs) 
  by integrating service provisioning with pre-filled information.
- **Automated Provisioning**: Streamlines service access by automating the provisioning process, 
  saving time and reducing errors.

The Workspaces feature can be accessed by:

1. **Navigate to the RDMP Form**: Access the RDMP form within ReDBox.
2. **Locate the Workspaces Tab**: Find the tab listing all configured workspaces.

## Key Features

- **Pre-Filled Information**: Automatically pulls data from the RDMP to fill out the workspace form, 
  speeding up the provisioning process.
- **Custom Fields**: Enter specific details required for the services being provisioned, 
  such as custom configurations or additional information.
- **Adjusting Storage Size**: For storage-related workspaces, easily specify the required storage capacity.
- **Adding Additional Details**: Include any other relevant information needed to complete the workspace setup.
- **Associated Workspaces**: The integration between RDMP and workspaces allows associated workspaces to be 
  displayed within the RDMP record.
- **Workspaces Dashboard**: Researchers can track and manage all their workspaces, 
  alongside the corresponding RDMPs, through a user-friendly dashboard.
- **Provisioning Framework**: When supported, the provisioning framework can push relevant 
  RDMP metadata to external services, helping service maintainers by providing essential project context.

## Using the Workspaces Feature


1. Creating an RDMP:

    1. Fill out the RDMP form with the necessary details about your research project.
    2. Save the RDMP to proceed to the workspaces section.

2. Selecting and Opening a Workspace:

    1. In the RDMP form, navigate to the Workspaces tab.
    2. Select the desired workspace from the list.

3. Filling Out the Workspace Form:

    1. Review the pre-filled information from the RDMP.
    2. Enter any additional required information 
       (e.g., storage size for a research data storage workspace).
    3. Save the form to initiate the provisioning process.
    4. View details about the status of the workspace either in the 
       RDMP or the workspaces dashboard


{% capture figure_src_workspaces_open %}{{ '/static/images/workspaces-open.png' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_workspaces_open
max-width="800px"
alt="Selecting and Opening a Workspace: Select the desired workspace from the list"
caption="Selecting and Opening a Workspace: Select the desired workspace from the list"
%}

{% capture figure_src_workspaces_info %}{{ '/static/images/workspaces-additional-info.png' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_workspaces_info
max-width="800px"
alt="Filling Out the Workspace Form: Enter any additional required information for the workspace"
caption="Filling Out the Workspace Form: Enter any additional required information for the workspace"
%}

{% capture figure_src_workspaces_list %}{{ '/static/images/workspaces-list.png' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_workspaces_list
max-width="800px"
alt="Filling Out the Workspace Form: View details about the status of the workspaces"
caption="Filling Out the Workspace Form: View details about the status of the workspaces"
%}

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

