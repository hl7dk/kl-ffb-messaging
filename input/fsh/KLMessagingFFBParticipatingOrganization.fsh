Profile: KLMessagingFFBParticipatingOrganization
Parent: KLCommonOrganization
Id: kl-messaging-ffb-participatingOrganization
Title: "ParticipatingOrganization"
Description: "Organization involved in the care plan for the citizen"
* name 1.. MS
* contact 1.. MS
* contact.name 1.. MS
* contact.name.prefix 1.. MS
* contact.name.family 1.. MS
* contact.name.given 1.. MS
* contact.telecom.system 1.. MS
* contact.telecom.value 1.. MS
* contact.telecom ^slicing.discriminator[0].type = #value
* contact.telecom ^slicing.discriminator[0].path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom contains phone 1.. MS and email 0.. MS
* contact.telecom[phone].system = #phone
* contact.telecom[email].system = #email
