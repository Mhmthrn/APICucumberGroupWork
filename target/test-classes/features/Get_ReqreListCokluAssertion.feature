Feature: Reqres isimli sayfanin Api testlerinin yapilmasi

  Scenario:  coklu assertion yapmak uzere  https://reqres.in/api/unknown/2 adresine get request gonderilir
  "id": 2, "name": "fuchsia rose","year": 2001, "color": "#C74375", "pantone_value": "17-2031",
  "support":  "url": "https://reqres.in/#support-heading", oldugu test edilir.

    Given Api kullanicisi "api/unknown/2" path parametrelerini set eder

    Then Donen response "2" "fuchsia rose" 2001 "#C74375"  "17-2031" "https://reqres.in/#support-heading" istenilen testleri

