---
layout: page_general
permalink: /rbdlc
title: Data Life Cycle
excerpt: Research Data Life Cycle Framework
---


ReDBox DLC is the next step forward for ReDBox.

With the help of supporters like Research Data Services (RDS) and the University of Technology Sydney (UTS), 
QCIF is creating the ReDBox DLC service to support the Research Data Life Cycle Framework (DLCF).

The DLCF is an Australian initiative designed to assist researchers in connecting their research activities with 
their research data as well as the eResearch infrastructure and services used to store, manage and process the data.

ReDBox supports the DLCF by assisting users to provision and manage storage infrastructure,
then allowing users to extract manifests of data back into ReDBox and publishing the data files 
alongside the data collection metadata.

{% capture figure_src_curation_lifecycle %}{{ '/static/images/curationlifecycle.png' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_curation_lifecycle
max-width="800px"
alt="How ReDBox supports the DCC Curation Life Cycle"
caption="How ReDBox supports the DCC Curation Life Cycle"
%}

## The Research Activity Portal and RAiDs

In a major step towards supporting the DLC, QCIF has collaborated with RDS to create a portal available to all 
researchers to register their research activities. Called the Research Activity Portal www.raportal.org.au, the 
portal will provide a Research Activity ID (RAiD) which is used as a universal identifier for linking researchers, 
research activities and research data. This function is also being embedded in the ReDBox platform, 
allowing researchers to generate RAiDs at the RDMP stage and apply RAiDs to their data collections.

To learn more about the RDS RAiD visit the RAiD website at www.raid.org.au.

## RAiDs in ReDBox

RAiDs are supported in the ReDBox DMP Tool, allowing users to add existing RAiDs to a data management plan or 
mint new RAiDs. In ReDBox 2.0 the RAiD will be a key identifier to tie together the data management plan, 
the provisioned storage and the published data collection.

## ReDBox and Provisioning

A key stage in the DLCF is linking research activities to the infrastructure and services used to store, manage and 
process research data. Currently the ReDBox DMP tool allows researchers to indicate resource requirements such as 
expected storage volumes. QCIF is collaborating with the eResearch team at University of Technology Sydney to extend 
ReDBox provisioning functions by either automating the provisioning or managing resource requests.

The ReDBox-Provisioner service will be an extended function of the ReDBox research data management planning tool.
It will enable researchers to carry out high-level research data management tasks.

Provisioner allows researchers to create a workspace that is attached to a service selected from a service catalogue.
In the initial release, these services will include GitLab code repositories, OMERO microscopy data storage and 
LabArchive electronic lab notebooks. In ReDBox, the researcher can then manage that workspace with a variety of 
functions, including:

- sharing a workspace (a directory, site or project belonging to a researcher in a particular tool) with other researchers
- setting a workspace to be immutable (read-only)
- making a workspace from one tool available in a different research tool.

Future Provisioner development is expected to support many more useful processes, including data archiving 
and data publication.

{% capture figure_src_provisioner %}{{ '/static/images/provisioner.jpg' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_provisioner
max-width="800px"
alt="The Provisioner links services to their research data management platform via workspaces"
caption="The Provisioner links services to their research data management platform via workspaces"
%}

## ReDBox and Data Harvesting

Once researchers have acquired their storage and compute resources, it is planned that ReDBox will assist 
researchers to directly manage and publish their data files. For example, using the Intersect Collections tool 
would allow researchers to select the files they want to manage from their CloudStor storage, create a metadata 
manifest of the files, and harvest the manifest (and optionally the data files) into ReDBox. This places the 
research data files under ReDBox and institutional control. The files and metadata can then be published for 
open access.

## The Benefits of ReDBox as a Research Data Management Platform

Through this approach researchers will have ReDBox as a single point of access to key elements of the DLCF, 
including planning, provisioning, data harvesting and publishing. It will give institutions greater visibility 
into how researchers manage and publish their data while providing assurances that researcher practices conform
to Australian standards and expectations.

{% capture figure_src_rbdlc %}{{ '/static/images/rbdlc.jpg' | relative_url }}{% endcapture %}
{% include figure_image.html
src=figure_src_rbdlc
max-width="800px"
alt="ReDBox is a complete data management system for supporting the Research Data Life Cycle Framework"
caption="ReDBox is a complete data management system for supporting the Research Data Life Cycle Framework"
%}
