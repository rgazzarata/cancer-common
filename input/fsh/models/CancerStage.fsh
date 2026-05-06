Logical: CancerStage
Id: CancerStage
Title: "CancerStage"
Description: "Logical model representing the cancer stage at the time of first diagnosis. The stage may be clinical or pathological: the clinical stage is derived from imaging evidence, while the pathological stage, when available, is derived from surgical evidence. Derived from Cancer_Common_Logical_Model_20260521.xlsx (sheet CancerStage)."
Characteristics: #can-be-target

* obeys cs-ev-w1
* obeys cs-ev-w2
* obeys cs-ev-e1
* obeys cs-ev-e1
* obeys cs-tnm-1
* obeys cs-nontnm-1
* cancerConditionAtDiagnosisReference 1..1 Reference(CancerConditionAtDiagnosis) "CancerCondition AtDiagnosis Reference"
* cancerConditionAtDiagnosisReference ^definition = "Reference to the cancer condition at first diagnosis for which the stage is reported."
* classificationType 0..1 CodeableConcept "ClassificationType"
* classificationType ^definition = "Staging classification system used when the staging system needs to be explicitly identified (e.g. TNM)."
* classificationType ^comment = "For TNM, this element should be populated with 'TNM'. For single-value systems, it may be omitted when the system/measure is represented through stageComponent.code."
* value 1..3 CancerStageComponent "StageComponent"
* value ^definition = "One or more staging values expressed as (code, value) pairs."
* value ^comment = "Most staging systems are represented by a single component. TNM is represented by three components, one for each of T, N, and M (codes 'T', 'N', 'M')."
* type 1..1 CodeableConcept "Type"
* type ^definition = "It indicates whether the stage instance is of type Clinical or Pathological."
* type ^comment = "It indicates whether the stage instance is of type Clinical or Pathological. Choice: Clinical | Pathological"
* evidenceReference[x] 0..* Surgery or Imaging "EvidenceReference"
* evidenceReference[x] ^definition = "Reference(s) to imaging (in case the stage is Clinical) or to surgery (in case the stage is Pathological)."
* evidenceReference[x] ^comment = "It shall be present. The reference shall be to one or more imaging (in case the stage is Clinical) or to one surgery (in case the stage is Pathological)."

/* * surgeryReference 0..1 Reference(Surgery) "SurgeryReference"
* surgeryReference ^definition = "It shall be present when the stage is of type Pathological and shall not be present when the stage is of type Clinical."
* imagingReference 0..* Reference(Imaging) "ImagingReference"
* imagingReference ^definition = "It shall be present when the stage is of type Clinical and shall not be present when the stage is of type Pathological." */

Invariant: cs-ev-w1
Description: "If type is Clinical, imaging evidence should be provided."
Severity: #warning
Expression: "type.text = 'Clinical' implies evidenceReferenceImaging.exists()"
Invariant: cs-ev-w2
Description: "If type is Pathological, surgical evidence should be provided."
Severity: #warning
Expression: "type.text = 'Pathological' implies evidenceReferenceSurgery.exists()"
Invariant: cs-ev-e1
Description: "If type is Clinical, surgical evidence must not be provided."
Severity: #error
Expression: "type.text = 'Clinical' implies evidenceReferenceSurgery.empty()"
Invariant: cs-ev-e2
Description: "If type is Pathological, imaging evidence must not be provided."
Severity: #error
Expression: "type.text = 'Pathological' implies evidenceReference"
Invariant: cs-tnm-1
Description: "If classificationType is TNM, more than one value is expected."
Severity: #warning
Expression: "classificationType.text = 'TNM' implies value.count() = 3"
Invariant: cs-nontnm-1
Description: "For non-TNM staging systems, a single value is typically expected."
Severity: #warning
Expression: "classificationType.text != 'TNM' implies value.count() = 1"
