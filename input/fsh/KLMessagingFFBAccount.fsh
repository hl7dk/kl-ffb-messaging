Profile: KLMessagingFFBAccount
Parent: Account
Id: kl-messaging-ffb-account
Title: "Account"
Description: "Account Information for FFB messaging"
* status MS
* status = #active
* identifier MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains accountno 1..1 MS
* identifier[accountno].system = "urn:accountno"

Profile: KLMessagingFFBAccountOwner
Parent: Organization
Id: kl-messaging-ffb-accountOwner
Title: "AccountOwner"
Description: "Organization behind an account"
* identifier MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains eanIdentifier 1..1 MS
* identifier[eanIdentifier] only KLMessagingFFBEANIdentifier
* contact MS
* contact.name MS
* contact.name.prefix MS
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

Profile: KLMessagingFFBEANIdentifier
Parent: Identifier
Id: kl-messaging-ffb-eanIdentifier
Title: "EANIdentifier"
Description: "EAN identifier"
* system 1.. MS
* system = "urn:oid:1.3.88"
* value 1.. MS
