Instance: ClinicalCancerProgression6-Example
InstanceOf: ClinicalCancerProgression
Usage: #example

* cancerConditionAtDiagnosisReference = Reference(CancerConditionAtDiagnosis1-Example)
* diseaseStatus.text = "Progression"
* assertedDate = "2020-04-15"
* extentType.text = "Metastatic"
* metastaticSites.coding[0].system = "ICDO"
* metastaticSites.coding[0].version = "3"
* metastaticSites.coding[0].code = #C40.1
* metastaticSites.coding[0].display = "Short bones of upper limb and associated joints"