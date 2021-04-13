Profile: KLMessagingFFBCitizen
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCitizen
Id: kl-messaging-ffb-citizen
Title: "KLMessagingFFBCitizen"
Description: "Citizen for FFB messaging"
* identifier 1.. MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains cpr ..1
* identifier[cpr] only http://hl7.dk/fhir/core/StructureDefinition/dk-core-cpr-identifier
* name MS
* name.family MS
* name.given MS
* address MS
* address.line 1.. MS
* address.postalCode 1.. MS
* address.city 1.. MS
* telecom MS
* telecom.system 1.. MS
* telecom.value 1.. MS
* contact MS
* contact.relationship MS
* contact.name MS
* contact.name.family MS
* contact.name.given MS
* contact.telecom MS
* contact.telecom.system 1.. MS
* contact.telecom.value 1.. MS
* contact.telecom ^slicing.discriminator[0].type = #value
* contact.telecom ^slicing.discriminator[0].path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom contains phone 1.. MS and email 1.. MS
* contact.telecom[phone].system = #phone
* contact.telecom[email].system = #email

Profile: KLMessaggingFFBGuardian
Parent: RelatedPerson
Id: kl-messaging-ffb-guardian
Title: "KLMessaggingGuardian"
Description: "Guardian for citizen in FFB messaging"
* patient MS
* patient only Reference(KLMessagingFFBCitizen)
* relationship 1..1 MS
* relationship = $v3-RoleCode#GUARD
* extension contains KLMessagingFFBGuardianshipFormExtension named guardianshipForm 1..1 MS
* name MS
* name.family MS
* name.given MS
* address.line 1.. MS
* address.postalCode 1.. MS
* address.city 1.. MS
* telecom MS
* telecom.system 1.. MS
* telecom.value 1.. MS
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system"
* telecom ^slicing.rules = #open
* telecom contains phone 1.. MS and email 1.. MS
* telecom[phone].system = #phone
* telecom[email].system = #email

Extension: KLMessagingFFBGuardianshipFormExtension
Id: kl-messaging-ffb-guardianshipForm
Title: "KLMessagingFFBGuardianshipFormExtension"
Description: "Form of guardianship for citizens in FFB messaging"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from KLMessagingFFBGuardianshipFormValues (required)

ValueSet: KLMessagingFFBGuardianshipFormValues
Id: kl-messaging-ffb-guardianshipFormValues
Title: "KLMessaggingFFBGuardianshipForms"
Description: "Guardianship form value set for citizens in FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBGuardianshipFormCodes
Id: kl-messaging-ffb-guardianshipFormCodes
Description: "Guardianship form code system for citizens in FFB messaging"
* #5 "Personlige og/eller økonomiske forhold, værgemålslovens § 5"
* #6 "Fratagelse af retlig handleevne, værgemålslovens § 6"
* #7 "Samværgemål, værgemålslovens § 7"