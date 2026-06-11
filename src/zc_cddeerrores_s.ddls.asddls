@EndUserText.label: 'Maintain Cód. de errores Singleton'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@UI: {
  headerInfo: {
    typeName: 'CDDeErroresAll'
  }
}
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_CDDeErrores_S
  provider contract TRANSACTIONAL_QUERY
  as projection on ZI_CDDeErrores_S
{
  @UI.facet: [ {
    id: 'CDDeErrores', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Cód. de errores', 
    position: 1 , 
    targetElement: '_CDDeErrores'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key SingletonID,
  @UI.hidden: true
  LastChangedAtMax,
  _CDDeErrores : redirected to composition child ZC_CDDeErrores
}
