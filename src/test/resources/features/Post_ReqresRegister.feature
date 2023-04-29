Feature:Reqres isimli sayfanin Api testlerinin yapilmasi
  @API
  Scenario: api/register end pintine bir post req gonderip rverilen token degerinin 17 ve uzeri karakterden olustugunu
      ve status code 200 oldugunu test edin

    Given Api kullanicisi "api/register" path parametrelerini set eder
    Then Register isleminin baasarili oldugunu ve donen Token degerinin   onyedi  ve uzeri basakmaktan olustugunu test eder

















  Scenario:   /api/login post reg gonder ve girisin basraili oldugunu test edin