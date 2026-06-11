@EndUserText.label: 'Maintain Cód. de errores'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZC_CDDeErrores
  as projection on ZI_CDDeErrores
{
  key ErrorCode,
  ConfigdeprecationCode,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _CDDeErroresAll : redirected to parent ZC_CDDeErrores_S,
  _CDDeErroresText : redirected to composition child ZC_CDDeErroresText,
  _CDDeErroresText.Description : localized
}
