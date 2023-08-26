Profile: KLMessagingFFBOrderCarePlan
Parent: http://fhir.kl.dk/core/StructureDefinition/KLCommonCareSocialCarePlan
Id: kl-messaging-ffb-orderCarePlan
Title: "OrderCarePlan"
Description: "FFB care plan being ordered"
* extension contains KLMessagingFFBActingMunicipalityExtension named subjectActingMunicipality 0..1 MS
* status MS
* intent MS
* category MS
* supportingInfo MS
* supportingInfo only Reference(KLMessagingFFBRelatedCarePlan)
* goal MS
* goal contains citizenObjective 0..* MS
* goal[citizenObjective] only Reference(KLMessagingFFBCitizenObjective)
* goal[fpurpose] only Reference(KLMessagingFFBInterventionPurpose)
* subject 1.. MS
* subject only Reference(KLMessagingFFBCitizen)
* period MS
* created MS 
* author 1.. MS
* author only Reference(KLMessagingFFBParticipatingOrganization)
* careTeam MS
* careTeam only Reference(KLMessagingFFBServicePerformer)
* addresses 1.. MS
* addresses only Reference(KLMessagingFFBTargetGroup)
