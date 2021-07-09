Extension: KLMessagingFFBActingMunicipalityExtension
Id: kl-messaging-ffb-actingMunicipality
Title: "ActingMunicipality"
Description: "Municipality acting for the subject in social matters"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from http://hl7.dk/fhir/core/ValueSet/dk-core-MunicipalityCodes (required)

Extension: KLMessagingFFBGuardianshipFormExtension
Id: kl-messaging-ffb-guardianshipForm
Title: "GuardianshipForm"
Description: "Form of guardianship for citizens in FFB messaging"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from KLMessagingFFBGuardianshipFormValues (required)

Extension: KLMessagingFFBParticipationDescriptionExtension
Id: kl-messaging-ffb-participationDescription
Title: "ParticipationDescription"
Description: "Decription of participants involvement in a careteam"
* value[x] 1..1 MS
* value[x] only string
