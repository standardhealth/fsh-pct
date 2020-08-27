<style type="text/css">
    .tg  {font-size:90%;border-collapse:collapse;border-spacing:0;border-color:#ccc;margin-left:auto; margin-right:auto; width:80%}
    .tg td{padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:bold;border-top-width:1px;border-bottom-width:1px;border-color:#ccc;color:#333;background-color:#fff;text-align:center;vertical-align:middle}
    .tg th{font-weight:bold;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-top-width:1px;border-bottom-width:1px;border-color:#ccc;color:#333;background-color:#f0f0f0;text-align:center;vertical-align:middle}
    .tg caption{padding:10px 5px; font-weight:bold}
    .tg .tg-bold{font-weight:bold;border-color:inherit;text-align:center;vertical-align:middle}
    .tg .tg-altbck{background-color:#f9f9f9;border-color:inherit;text-align:center;vertical-align:middle}
    .tg .tg-altbck-bold{background-color:#f9f9f9;font-weight:bold;border-color:inherit;text-align:center;vertical-align:middle}
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
    } 
    .img-container {
      text-align: center;
      display: block;
    }  
</style>

<h3>Trial Matching Service Operation Definition</h3>
<p>To mCODE enable the matching service, FHIR resources are used by the <a href="OperationDefinition-TrialMatchService.html">Trial Matching Service</a> which are defined in this implementation guide. The Trial Matching Service takes a <a href="StructureDefinition-trial-match-message-bundle.html">Trial Match Message Bundle</a> as input and returns a <a href="StructureDefinition-trial-match-results-bundle.html">Trial Match Results Bundle</a>.</p>

<span class="img-container">
    <img src="match_service_workflow.png" alt="Integrated Trial Matching for Cancer Patients and Providers Workflow Diagram" width="65%">
</span>

<h4>Trial Matching Service Input</h4>
<p>The input bundle contains a <a href="StructureDefinition-trial-match-message-header.html">Trial Match Message Header</a>, FHIR Parameters and a <a href="StructureDefinition-trial-match-data-bundle.html">Trial Match Data Bundle</a>. The Trial Match Data Bundle contains the patient data, including the minimum eligiblity criteria, as mCODE&trade;. For more information on the mCODE profiles, consult the <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">mCODE specification</a>.</p>

<table class="tg">
<caption>Table 1. Minimum Eligibility Criteria Mapped to mCODE</caption>
<tr>
  <th class="tg-bold">Criteria</th>
  <th class="tg-bold">Profile</th>
  <th class="tg-bold">Data Element</th>
</tr>
<tr>
  <td>Age</td>
  <td>Cancer Patient</td>
  <td>Birth Date</td>
</tr>
<tr>
  <td>Cancer Type</td>
  <td>Primary Cancer Condition</td>
  <td>Condition Code</td>
</tr>
<tr>
  <td>Cancer Sub-type</td>
  <td>Primary Cancer Condition</td>
  <td>Extension - histology/morphology behavior</td>
</tr>
<tr>
  <td>Presence of Metastasis</td>
  <td>Secondary Cancer Condition</td>
  <td>Condition Code</td>
</tr>
<tr>
  <td rowspan="2">Stage</td>
  <td>TNM Clinical Stage Group</td>
  <td>Value</td>
</tr>
<tr>
  <td>TNM Pathological Regional Nodes Category</td>
  <td>Value</td>
</tr>
<tr>
  <td rowspan="2">Biomarker/subtype</td>
  <td>Cancer Genetic Variant</td>
  <td>Value</td>
</tr>
<tr>
  <td>Tumor Marker</td>
  <td>Code</td>
</tr>
<tr>
  <td rowspan="3">Treatment</td>
  <td>Cancer Related Medication Statement</td>
  <td>Medication</td>
</tr>
<tr>
  <td>Cancer Related Radiation Procedure</td>
  <td>Code</td>
</tr>
<tr>
  <td>Cancer Related Surgical Procedure</td>
  <td>Code</td>
</tr>
</table>

<p>&nbsp;</p>

<h4>Trial Matching Service Output</h4>
<p>The return bundle contains a <a href="StructureDefinition-trial-match-message-header.html">Trial Match Message Header</a> and a <a href="StructureDefinition-trial-match-result-set.html">Trial Match Result Set</a>. The Trial Match Result Set contains a FHIR ResearchStudy for each matching clinical trial. Each ResearchStudy entry should contain, at a minimum, the following fields</p>
  <ul>
    <li>Title</li>
    <li>Summary</li>
    <li>Site Location</li>
    <li>Phase</li>
    <li>Contact Information (i.e., Sponsor email, phone number)</li>
    <li>Study Type</li>
    <li>Inclusion/Exclusion Criteria</li>
  </ul>
<p>&nbsp;</p>

<h3>Additional Project Links</h3>
<p><a href="https://github.com/mcode/clinical-trial-matching-engine" target="_blank">GitHub Code Repository for the User Interface</a></p>
<p><a href="https://github.com/mcode/clinical-trial-matching-service" target="_blank">GitHub Code Repository for the TrialScope Service Wrapper</a></p>
<p><a href="https://github.com/mcode/clinical-trial-matching-engine/wiki" target="_blank">GitHub Wiki for the mCODE Matching Service API</a></p>