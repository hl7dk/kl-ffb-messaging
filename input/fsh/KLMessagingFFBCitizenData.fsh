Profile: KLMessagingFFBCitizenObjective
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialGoal
Id: kl-messaging-ffb-citizenObjective
Title: "CitizenObjective"
Description: "The overall objective of the citizen"
* lifecycleStatus MS
* category MS
* category = $KLCommon#416fe27d-3ccf-4390-8742-8b52a9d8dc78
* description MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBInterventionPurpose
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialPurpose
Id: kl-messaging-ffb-interventionPurpose
Title: "InterventionPurpose"
Description: "Purpose of an intervention for a citizen"
* lifecycleStatus MS
* description MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBInterventionGoal
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFFBGoal
Id: kl-messaging-ffb-interventionGoal
Title: "InterventionGoal"
Description: "Goal related to an intervention for a citizen"
* lifecycleStatus MS
* description MS
* category MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* target MS
* target[changeValueSlice] MS
* target[changeValueSlice].detailCodeableConcept MS
* target[changeValueSlice].detailCodeableConcept from http://kl.dk/fhir/common/caresocial/ValueSet/KLChangeValueCodesFFB
* target[severitySlice] MS
* target[severitySlice].detailCodeableConcept MS
* target[severitySlice].detailCodeableConcept from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFFB
* addresses MS
* addresses only Reference(KLMessagingFFBCondition)
* addresses.extension[ConditionRank] MS

Profile: KLMessagingFFBTargetGroup
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialFocusCondition
Id: kl-messaging-ffb-targetGroup
Title: "TargetGroup"
Description: "Target group of a citizen"
* code 1.. MS
* code.coding 1.. MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBCondition
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialCondition
Id: kl-messaging-ffb-condition
Title: "Condition"
Description: "Condition according to FFB"
* clinicalStatus MS
* severity MS
* severity from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFFB
* code 1.. MS
* code.coding 1..1 MS
* code.coding from http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesFFB (required)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBFollowUp
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialEncounter
Id: kl-messaging-ffb-followUp
Title: "FollowUp"
Description: "Follow-up encounter for conditions"
* status MS
* class MS
* type 1..1 MS
* type = $KLCommon#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* period MS
* period.start MS

Profile: KLMessagingFFBInformationGathering
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialInformationGathering
Id: kl-messaging-ffb-informationGathering
Title: "InformationGathering"
Description: "Assessment of the citizen"
* finding MS
* finding.itemReference MS
* finding.itemReference only Reference(KLMessagingFFBCondition or KLMessagingFFBDiagnosis)
* investigation MS
* investigation.item MS
* investigation.item only Reference(KLMessagingFFBEvaluation or KLMessagingFFBMatterOfInterest)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBDiagnosis
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialCondition
Id: kl-messaging-ffb-disgnosis
Title: "Diagnosis"
Description: "A diagnosis of the citizen"
* clinicalStatus MS
* code 1.. MS
* code.coding contains diagnosis 0..1
* code.coding.system = ""
* code.text MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)

Profile: KLMessagingFFBEvaluation
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCareSocialEvaluation
Id: kl-messaging-ffb-evaluation
Title: "Evaluation"
Description: "Vurdering"
* code.coding[klEvaluationCode] MS
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* valueCodeableConcept MS