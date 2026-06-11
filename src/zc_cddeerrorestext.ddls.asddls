@EndUserText.label: 'Maintain Cód. de errores Text'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZC_CDDeErroresText
  as projection on ZI_CDDeErroresText
{
  @ObjectModel.text.element: [ 'LanguageName' ]
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_LanguageVH', 
      element: 'Language'
    }, 
    useForValidation: true
  } ]
  key Langu,
  key ErrorCode,
  Description,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _LanguageText.LanguageName : localized,
  _CDDeErrores : redirected to parent ZC_CDDeErrores,
  _CDDeErroresAll : redirected to ZC_CDDeErrores_S
}
