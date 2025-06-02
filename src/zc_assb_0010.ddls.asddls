@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '[SB] 수불 구분 설정'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_ASSB_0010 
  provider contract transactional_query
  as projection on ZR_ASSB_0010
{
      @UI.facet: [{
                    id: 'HeaderData',
                    purpose: #STANDARD,
                    label: '수불 구분 설정',
                    type: #IDENTIFICATION_REFERENCE,
                    position: 10
                 }]
  key Uuid,
      @EndUserText.label: '플랜트' 
      @UI: {
        lineItem: [{position: 10 }],
        identification: [{position: 10 }]
      }
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZI_PLANT_01', element: 'Plant' } }]
  key Werks,
      @EndUserText.label: '평가클래스'
      @Consumption.valueHelpDefinition: [{ entity: { name:'ZI_VCLASS_01', element: 'ValuationClass' } }]
      @UI: {
        lineItem: [{position: 20 }],
        identification: [{position: 20 }]
      }
  key Bklas,
      @EndUserText.label: '수불필드할당'
      @UI: {
        lineItem: [{position: 30 }],
        identification: [{position: 30 }]
      }     
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZR_ASSB_0011S', element: 'Zsfld' },
                                                additionalBinding: [   {localElement: 'Fieldname', element: 'Fieldname'},
                                                                       {localElement: 'Zsbgb', element: 'Zsbgb'}] }]
  key Zsfld,
      @EndUserText.label: '범주'
      @UI: {
        lineItem: [{position: 40 }],
        identification: [{position: 40 }]
      }
  key Ptyp,
      @EndUserText.label: '필드이름'
      @UI: {
        lineItem: [{position: 50 }],
        identification: [{position: 50 }]
      }
      Fieldname,
      @EndUserText.label: '수불구분자'
      @UI: {
        lineItem: [{position: 60 }],
        identification: [{position: 60 }]
      }
      Zsbgb,
      @EndUserText.label: '합계필드조건'
      @UI: {
        lineItem: [{position: 70 }],
        identification: [{position: 70 }]
      }
      Zsumc,
      @EndUserText.label: '차이귀속여부'
      @UI: {
        lineItem: [{position: 80 }],
        identification: [{position: 80 }]
      }
      Zdfgb,
      @EndUserText.label: '재고자산계정'
      @UI: {
        lineItem: [{position: 90 }],
        identification: [{position: 90 }]
      }
      Racct
}
