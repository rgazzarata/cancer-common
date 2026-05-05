Logical: CancerStageComponent
Id: CancerStageComponent
Title: "Cancer Stage Component"
Description: "Logical model representing a single staging component expressed as a (code, value) pair, supporting both single-value staging systems and multi-component systems such as TNM. Derived from Cancer_Common_Logical_Model_20260521.xlsx (sheet CancerStageComponent)."
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code"
* code ^definition = "Identifies which staging component is being reported."
* code ^comment = "For single-value staging systems, this represents the staging system/measure being used (e.g. 'FIGO stage group'). For TNM, expected codes include 'T', 'N', and 'M'."

* value 1..1 CodeableConcept "Value"
* value ^definition = "Staging value associated with the reported component."
* value ^comment = "For TNM, this carries the component value (e.g. T2, N0, M0). For single-value systems, this carries the stage group/value (e.g. IIIB)."