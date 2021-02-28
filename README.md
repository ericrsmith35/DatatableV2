# DatatableV2

Lightning Web Component for Flow Screens:       **datatableV2**

# The most recent source code can now be found here:
https://github.com/alexed1/LightningFlowComponents/tree/master/flow_screen_components/datatable 

---

**This component allows the user to configure and display a datatable in a Flow screen.**

Additional components packaged with this LWC:

                    Apex Classes:   SObjectController2 
                                    SObjectController2Test
                            
                    Flows:          Datatable Configuration Helper
                                    Datatable Configuration Helper - Temp SubFlow
                                                  
**Documentation:**  https://unofficialsf.com/datatablev2-lightning-web-component-for-flow-screens/  
  
**Created by:**	Eric Smith  
**Date:**		March 2020
  
LinkedIn: https://www.linkedin.com/in/ericrsmith2  
Salesforce: https://trailblazer.me/id/ericsmith  
Blog: https://ericsplayground.wordpress.com/blog/  
Twitter: https://twitter.com/esmith35  

---
**To just install datatableV2 without the Configuration helper, use these links: (v2.46)**  
Production/Developer: https://login.salesforce.com/packaging/installPackage.apexp?p0=04t3t000002kq5V  
Sandbox: https://test.salesforce.com/packaging/installPackage.apexp?p0=04t3t000002kq5V  

---
**You must install these components FIRST in order to use the Datatable Configuration Helper Flow**     
Flow Base Components (https://unofficialsf.com/introducing-flowbasecomponents/)  
  
<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>
 
---    
Because the Datatable Configuration Helper uses Metadata APIs, you’ll need to have a Remote Site Setting on the org. If you don’t, you’ll see an error like this:
    
`Metadata Transfer
Job Status: Error: "IO Exception: Unauthorized endpoint, please check Setup->Security->Remote site settings. endpoint = https://test35-dev-ed--c.visualforce.com/services/Soap/m/42.0"`
    
To address this, copy the root url from the error message and go to Setup –> Remote Site Settings and create a new setting.

![Remote Site Setting](RemoteSiteSetting.PNG?raw=true)
    
This configures your org to essentially allow applications to run that call out to the internet and then back into the same org via its API endpoints.

---
## Release Notes
10/14/20 -  Eric Smith -    Version 2.47 -  
            Bug Fix:        Display correct icon for Table Header (was always showing standard:account icon)
  
10/07/20 -  Eric Smith -    Version 2.46 -  
            Updates:        Added new Output Parameter for the # of Selected Records 
                            (this can be used for conditional visibility on the same screen as the datatable)   
                            New Selected Record Output Parameter - Returns an SObject record if just a single record is selected 
                            New Required? Parameter - Requires the user to select at least 1 row to proceed  
                            New option to suppress the link for the object's standard Name field  
                            New optional Table Header with Table Icon and Table Label Parameters  
                            Switched DualListbox to the fbc version  
                            Added spinners while sorting & filtering data  
                            Allow case insensitive field API names  
                            Allow custom field API names w/o the __c suffix  
            Bug Fixes:      Display Picklist Labels instead of API Names for Picklist and Multipicklist fields  
                            Added a Clear Selection button for tables with just a single record
  
09/22/20 -  Eric Smith -    Version 2.45 -  
            Bug Fix:        Fixed inability to edit some field types (introduced by v2.44)
  
09/20/20 -  Kevin Hart -    Version 2.44 - 
            Updates:        Added ability to display Rich Text fields  
            Eric Smith -    Bug Fix: Fixed error when selecting column action of WrapText or ClipText  
                
09/01/20 -  Eric Smith -    Version 2.43 -  
            Bug Fix:        Update Percent Field Handling and set Formula Fields to be Non-Editable  
              
08/26/20 -  Eric Smith -    Version 2.42 -  
            Bug Fix:        Update Time fields with the User's Timezone Offset value so they display as intended  
            Bug Fix:        Fix field type so Datetime fields display correctly    
                
08/14/20 -  Eric Smith -    Version 2.41 -     
            Bug Fix:        Fixed issue with time and date-time fields being displayed as a day earlier     
               
08/11/20 -  Eric Smith -    Version 2.40 -  
            Updates:        Added attribute to allow the suppression of the record link on the SObject's 'Name' field  
            Bug Fix:        Fixed code so the 'Name' Field column now sorts correctly  
              
07/31/20 -  Eric Smith -    Version 2.39 -   
            Updates:        Added Datatable Configuration Helper Flow  
            REQUIRES:       Flow Base Components (https://unofficialsf.com/introducing-flowbasecomponents/)  
            REQUIRES:       Dual List Box (https://unofficialsf.com/duallistbox/)   
            REQUIRES:       Remote Site Setting (Setup)
                  
07/31/20 -  Andy Hass -     Version 2.38 -  
            Updates:        Added support for Checkbox Field Type
                
07/07/20 -  Eric Smith -    Version 2.37 -    
            Bug Fix:        Fixed issue with the date being displayed as a day earlier   
              
07/01/20 -  Eric Smith -    Version 2.36 -  
            Updates:        Now displays the primary "Name" field as a Link (textWrap = true)  
                            Added button in Config Mode to round off Column Width values  
              
06/30/20 -  Eric Smith -    Version 2.35 -  
            Updates:        Extended Configuration Mode to handle Column Alignments, Labels, Widths, Allow Edit & Allow Filter  
                            Added Configuration Mode buttons to select all columns for Edit and/or Filter  
                            Selecting an attribute string now copies the contents into the system Clipboard  
                              
06/24/20 -  Eric Smith -    Version 2.34 -  
            Updates:        Added Configuration Mode parameter (Used by Datatable Configuration Flow)  
            Bug Fix:        Fixed issue with column widths resetting when filtering  
  
06/19/20 -  Eric Smith -    Version 2.33 -  
            Updates:        Removed default value for Table Height
            Bug Fix:        Fixed issue with lookup fields being blank in the first record                                                    
  
06/03/20 -  Eric Smith -    Version 2.32 -  
            Bug Fix:        Fixed error when editing more than one column in a single row while suppressing the Cancel/Save buttons
  
06/03/20 -  Eric Smith -    Version 2.31 -  
            Updates:        Changed SObjectController to SObjectController2 to allow for easier deployment to orgs 
                            that already have an earlier version of the datatable component    
                                                                                   
06/03/20 -  Eric Smith -    Version 2.3 -  
            Updates:        Changed SObjectController to SObjectController2 to allow for easier deployment to orgs 
                            that already have an earlier version of the datatable component
  
06/03/20 -  Eric Smith -    Version 2.2 -  
            Enhancements:   Added datatable border attribute
            Updates:        Fixed attribute parsing, Fixed Spinner
  
06/01/20 -  Eric Smith -    Version 2.1 -  
            Enhancements:   Updated with features from v1.2 & v1.3                                                
  
04/22/20 -  Eric Smith -    Version 2.0 (Summer '20) -  
            Enhancements:   Summer '20 New Feature - Dynamic Object Type
                            One version of the component now supports ALL Standard & Custom SObjects
  
05/23/20 -  Eric Smith -    Version 1.3 -  
            Updates:        Added support for a serialized JSON string of records of a user defined object
                            Added an attribute to specify the height of the datatable
                            Bug Fix - Fixed error when editing multiple rows           
  
05/06/20 -  Eric Smith -    Version 1.2 -  
            Updates:        Handle lookup Objects without a Name field & 
                            Trap non-updatable Master/Detail fields
  
04/14/20 -  Eric Smith -    Version 1.1 -  
            Enhancements:   New Column Attribute to support column filtering  
  
04/01/20 -  Eric Smith -    Version 1.0 -  
Features:   The only required paramters are the SObject collection of records and a list of field API names  
            The field label and field type will default to what is defined in the object  
            Numeric fields will display with the correct number of decimal places as defined in the object  
            Lookup fields are supported and will display the referenced record's name field as a clickable link  
            All columns are sortable, including lookups (by name)  
            The selection column can be multi-select (Checkboxes), single-select (Radio Buttons), or hidden  
            A collection of pre-selected rows can be passed into the component  
            Inline editing is supported with changed values passed back to the flow  
            Unlike the original datatable component, only the edited records will be passed back to the flow  
            The maximum number of rows to display can be set by the user  
            Optional attribute overrides are supported and can be specified by list, column # or by field name, including:  

                - Alignment               
                - Editable
                - Header Icon
                - Header Label
                - Initial Column Width
                - Custom Cell Attributes including those with nested values {name: {name:value}}               
                - Custom Type Attributes including those with nested values {name: {name:value}}
                - Other Custom Column Attributes including those with nested values {name: {name:value}}
  
---

Copyright (c) 2020, Eric Smith

Redistribution and use in source and binary forms, with or without modification, are permitted provided 
that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer 
in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived 
from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, 
BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
