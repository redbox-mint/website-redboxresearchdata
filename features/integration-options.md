---
layout: page_general
permalink: /features/integration-options
title: Integration Options
excerpt: ReDBox can seamlessly integrate with a range of institutional systems.
---

## Integration Options in ReDBox


ReDBox integrates seamlessly with a variety of institutional systems, ensuring efficient data management and 
streamlined research workflows.
These integration options include a fully featured REST API, provisioner plugins for research services, 
publishing integrations for data dissemination, and powerful lookup data functionalities.
Each of these integrations helps ensure ReDBox can be tailored to meet the specific needs of your institution, 
fostering data accuracy, smoother processes, and enhanced collaboration among researchers.

### REST API

ReDBox's fully featured REST API allows other systems to modify or retrieve information within the platform.
This ensures seamless integration with institutional systems, supporting smooth data flow and interoperability.

#### Common Use Cases

- **Exporting Data**: Use the export API to retrieve data from ReDBox for integration with 
  data lakes or reporting systems, enabling comprehensive institutional analysis.
- **Automated Record Creation**: Trigger automatic record creation in ReDBox based on external system actions, 
  such as generating an RDMP when a project grant is approved in an external system.
  This reduces manual effort and ensures data consistency.

### Provisioner Plugins for Research Services

ReDBox provides a range of plugins to provision research services like storage and online tools.
These plugins encourage RDMP completion and link service usage directly to projects, enhancing research workflows.

- **[ServiceNow](https://www.servicenow.com/)**: Seamlessly integrates for creating and managing service requests.
- **[REDCap](https://www.project-redcap.org/)**: Provision REDCap projects and resources.
- **[Terraform](https://www.terraform.io/)**: Automate infrastructure provisioning.
- **[GitLab](https://about.gitlab.com/)**: Manage GitLab repositories and resources.
- **[OMERO](https://www.openmicroscopy.org/omero/)**: Integrate with OMERO for image data management.
- **[LabArchives](https://www.labarchives.com/)**: Connect with LabArchives for managing lab notebooks and research data.

Additionally, many more plugins can be developed to extend the provisioning capabilities of 
ReDBox, making it highly adaptable to various research needs and institutional requirements.


{% capture figure_src_provisioner %}{{ '/static/images/provisioner.jpg' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_provisioner
max-width="800px"
alt="Diagram showing provisioners and example data flow"
caption="Diagram showing provisioners and example data flow"
%}

### Publishing and Dissemination

ReDBox simplifies data publishing with configurable workflows and supports pushing records to 
institutional search and discovery portals, ensuring wide visibility for your research data.

- **[Datacite Fabrica](https://doi.datacite.org/)**: Integration with the Datacite Fabrica API for DOI minting
- **[Figshare](https://figshare.com/)**: Integrates with Figshare for publishing and managing research outputs.
- **OAI-PMH Feed**: Supports any portals that can ingest records using the OAI-PMH protocol, 
  such as [Research Data Australia](https://researchdata.edu.au/).

Additional portal systems can be integrated with further development, ensuring broad 
compatibility with various publication platforms and maximizing the visibility and impact 
of research data.

### Lookup Data Integration

ReDBox ensures accurate records with powerful lookup functionality for institutional information.
These lookup capabilities help maintain data integrity and streamline the process of filling
out records within ReDBox.

- **API Integration**: Search and suggest values directly from source institutional systems in real time, 
  ensuring up-to-date information.
- **Ingesting Feeds**: Import data feeds from institutional systems and use internal search APIs to suggest 
  values for accurate data entry.



