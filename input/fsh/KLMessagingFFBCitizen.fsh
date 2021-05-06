Profile: KLMessagingFFBCitizen
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCitizen
Id: kl-messaging-ffb-citizen
Title: "KLMessagingFFBCitizen"
Description: "Citizen for FFB messaging"
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

Profile: KLMessagingFFBConsent
Parent: Consent
Id: kl-messaging-ffb-consent
Title: "KLMessagingFFBConsent"
Description: "Consent given for a citizen in FFB Messaging"
* status MS
* scope MS
* category MS
* patient 1.. MS
* patient only Reference(KLMessagingFFBCitizen)
* dateTime 1.. MS
* performer 1.. MS
* performer only Reference(KLMessagingFFBRelatedPerson)

Profile: KLMessagingFFBRelatedPerson
Parent: RelatedPerson
Id: kl-messaging-ffb-relatedPerson
Title: "KLMessagingFFBRelatedPerson"
Description: "Related person for a citizen in FFB messaging"
* patient MS
* patient only Reference(KLMessagingFFBCitizen)
* relationship 1..1 MS
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
* extension contains KLMessagingRepresentativeRoleExtension named representativeRole 0..1 MS

Extension: KLMessagingRepresentativeRoleExtension
Id: kl-messaging-ffb-representativeRole
Title: "KLMessagingRepresentativeRoleExtension"
Description: "Representative role for a related person in FFB messaging"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from KLMessagingFFBRepresentativeRoleValues (required)

Profile: KLMessagingFFBGuardian
Parent: KLMessagingFFBRelatedPerson
Id: kl-messaging-ffb-guardian
Title: "KLMessagingGuardian"
Description: "Guardian for citizen in FFB messaging"
* relationship = $v3-RoleCode#GUARD
* extension contains KLMessagingFFBGuardianshipFormExtension named guardianshipForm 1..1 MS

Extension: KLMessagingFFBGuardianshipFormExtension
Id: kl-messaging-ffb-guardianshipForm
Title: "KLMessagingFFBGuardianshipFormExtension"
Description: "Form of guardianship for citizens in FFB messaging"
* value[x] 1..1 MS
* value[x] only Coding
* value[x] from KLMessagingFFBGuardianshipFormValues (required)
