Profile: KLMessagingFFBCitizen
Parent: http://kl.dk/fhir/common/caresocial/StructureDefinition/KLCommonCitizen
Id: kl-messaging-ffb-citizen
Title: "Citizen"
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
* contact.telecom contains phone 1.. MS and email 0.. MS
* contact.telecom[phone].system = #phone
* contact.telecom[email].system = #email

Profile: KLMessagingFFBConsent
Parent: Consent
Id: kl-messaging-ffb-consent
Title: "Consent"
Description: "Consent given for a related person in FFB Messaging"
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
Title: "RelatedPerson"
Description: "Related person for a citizen in FFB messaging"
* patient MS
* patient only Reference(KLMessagingFFBCitizen)
* relationship 1.. MS
* relationship from KLMessagingFFBRelationshipTypeValues (extensible)
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
* telecom contains phone 0.. MS and email 0.. MS
* telecom[phone].system = #phone
* telecom[email].system = #email

Profile: KLMessagingFFBGuardian
Parent: KLMessagingFFBRelatedPerson
Id: kl-messaging-ffb-guardian
Title: "Guardian"
Description: "Guardian for citizen in FFB messaging"
* relationship = $v3-RoleCode#GUARD
* extension contains KLMessagingFFBGuardianshipFormExtension named guardianshipForm 1..1 MS