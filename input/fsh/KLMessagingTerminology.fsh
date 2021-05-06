ValueSet: KLMessagingFFBRepresentativeRoleValues
Id: kl-messaging-ffb-representativeRoleValues
Title: "KLMessagingFFBRepresentativeRoleValues"
Description: "Representative role value set for a related person in FFB messaging"
* include codes from system KLMessagingFFBRepresentativeRoleCodes

CodeSystem: KLMessagingFFBRepresentativeRoleCodes
Id: kl-messaging-ffb-representativeRoleCodes
Description: "Representative role code system for a related person in FFB messaging"
* #advocate "Bisidder"
* #representative "Partsrepræsentant"

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

ValueSet: KLMessagingConsentPolicyValues
Id: kl-messaging-ffb-consentPolicyValues
Title: "KLMessaggingFFBGuardianshipForms"
Description: "Consent policy value set for FFB messaging"
* include codes from system KLMessagingFFBGuardianshipFormCodes

CodeSystem: KLMessagingFFBConsentPolicyCodes
Id: kl-messaging-ffb-consentPolicyCodes
Description: "Consent policy code system for FFB messaging"
* #persondataloven "Persondataloven, §6-8"
