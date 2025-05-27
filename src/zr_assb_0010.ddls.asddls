@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '[SB] 수불 구분 설정'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_ASSB_0010 as select from zassbt0010
{
        @EndUserText.label: 'UUID'
    key uuid      as Uuid,
        @EndUserText.label: '플랜트'
    key werks     as Werks,
        @EndUserText.label: '평가클래스'
    key bklas     as Bklas,
        @EndUserText.label: '수불필드할당'
    key zsfld     as Zsfld,
        @EndUserText.label: '범주'
    key ptyp      as Ptyp,
        @EndUserText.label: '필드이름'
        fieldname as Fieldname,
        @EndUserText.label: '수불구분자'
        zsbgb     as Zsbgb,
        @EndUserText.label: '합계필드조건'
        zsumc     as Zsumc,
        @EndUserText.label: '차이귀속여부'
        zdfgb     as Zdfgb,
        @EndUserText.label: '재고자산계정'
        racct     as Racct
}
