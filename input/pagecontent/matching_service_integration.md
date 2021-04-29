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

<h3>Clinical Trial Matching Service Operation Definition</h3>
<p>To mCODE&trade; enable the matching service, FHIR resources are used by the <a href="OperationDefinition-ClinicalTrialMatchService.html">Clinical Trial Matching Service</a> which are defined in this implementation guide.</p>


<h4>Clinical Trial Matching Service Input</h4>
<p>The inputs include a set parameters and a <a href="StructureDefinition-trial-match-data-bundle.html">Trial Match Data Bundle</a>. The Trial Match Data Bundle contains the optimized patient data as mCODE to filter clinical trials. For more information on the mCODE profiles, consult the <a href="https://hl7.org/fhir/us/mcode/STU1" target="_blank">mCODE specification</a>.</p>

<table class="tg">
<caption>Table 1. Optimized Patient Data Mapped to mCODE</caption>
<tr>
  <th class="tg-bold">Filter Criteria</th>
  <th class="tg-bold">Profile</th>
  <th class="tg-bold">Data Element</th>
  <th class="tg-bold">Value Set</th>
</tr>
<tr>
  <td>Age</td>
  <td>Cancer Patient</td>
  <td>birthDate</td>
  <td>N/A, age is dervied from birthdate</td>
</tr>
<tr>
  <td>Cancer Type</td>
  <td>Primary Cancer Condition</td>
  <td>code</td>
  <td>PrimaryOrUncertainBehaviorCancerDisorderVS</td>
</tr>
<tr>
  <td>Cancer Sub-type</td>
  <td>Primary Cancer Condition</td>
  <td>mcode-histology-morphology-behavior</td>
  <td>HistologyMorphologyBehaviorVS</td>
</tr>
<tr>
  <td>Presence of Metastasis</td>
  <td>Secondary Cancer Condition</td>
  <td>code</td>
  <td>SecondaryCancerDisorderVS</td>
</tr>
<tr>
  <td rowspan="2">Stage</td>
  <td>TNM Clinical Stage Group</td>
  <td>value</td>
  <td>TNMStageGroupVS</td>
</tr>
  <td>TNM Pathological Stage Group</td>
  <td>value</td>
  <td>TNMStageGroupVS</td>
<tr>
  <td rowspan="2">Biomarkers</td>
  <td>Cancer Genetic Variant</td>
  <td>component:GeneStudied</td>
  <td>HGNCVS</td>
</tr>
<tr>
  <td>Tumor Marker</td>
  <td>code</td>
  <td>TumorMarkerTestVS</td>
</tr>
<tr>
  <td rowspan="3">Treatments</td>
  <td>Cancer Related Medication Statement</td>
  <td>medication</td>
  <td>US Core Medication Codes (RxNorm)</td>
</tr>
<tr>
  <td>Cancer Related Radiation Procedure</td>
  <td>code</td>
  <td>RadiationProcedureVS</td>
</tr>
<tr>
  <td>Cancer Related Surgical Procedure</td>
  <td>code</td>
  <td>CancerRelatedSurgicalProcedureVS</td>
<tr>
  <td rowspan="2">Performance Status</td>
  <td>ECOG Performance Status</td>
  <td>value</td>
  <td>N/A, actual result</td>
</tr>
<tr>
  <td>Karnofsky Performance Status</td>
  <td>value</td>
  <td>N/A, actual result</td>
</tr>
</tr>
</table>

<p>&nbsp;</p>

<h4>Trial Matching Service Output</h4>
<p>The matching service returns a <a href="StructureDefinition-trial-match-result-set.html">Trial Match Result Set</a>. The Trial Match Result Set contains a FHIR ResearchStudy for each matching clinical trial. Each ResearchStudy entry should contain, at a minimum, the following fields</p>
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
<p><a href="https://github.com/mcode/clinical-trial-matching-service-trialscope" target="_blank">GitHub Code Repository for the TrialScope Service Wrapper</a></p>
<p><a href="https://github.com/mcode/clinical-trial-matching-service-trialjectory" target="_blank">GitHub Code Repository for the TrialJectory Service Wrapper</a></p>
<p><a href="https://github.com/mcode/clinical-trial-matching-service-breastcancertrials.org" target="_blank">GitHub Code Repository for the BreastCancerTrials.org Service Wrapper</a></p>
<p><a href="https://github.com/mcode/clinical-trial-matching-service" target="_blank">GitHub Code Repository for the Service Library</a></p>