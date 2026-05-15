Instance: ClinicalCancerProgression5-Example
InstanceOf: ClinicalCancerProgression
Usage: #example

* cancerConditionAtDiagnosisReference = Reference(CancerConditionAtDiagnosis1-Example)
* diseaseStatus.text = "Partial Remission"
* assertedDate = "2020-01-02"
* extentType.text = "Loco-regional"
* locoRegionalSites.coding[0].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* locoRegionalSites.coding[0].code = #C77.0
* locoRegionalSites.coding[0].display = "Head, face, and neck (including supraclavicular)"