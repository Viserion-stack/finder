
class NotificationSetting {
  String title;
  bool value;

  NotificationSetting({
    this.title,
    this.value = false,
  });
}

class Slizgowe {
  String numerGrupy;
  String nazwaGrupySzczotek;
  String dopuszczalanaGestoscPradu;
  String dopuszczalanaMaksymalnapredkoscObrotowa;
  String napieciePrzejsciaNaPareSzczotek;
  String napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone;
  String rezystywnosc;
  String twardosc;
  String wspolczynnikTarciaMax;
  String zuzyciepo50hPracy;
  String ciezarObjetosciowy;
  String zawartoscPopiolu;

  Slizgowe({
    this.numerGrupy,
    this.nazwaGrupySzczotek,
    this.dopuszczalanaGestoscPradu,
    this.dopuszczalanaMaksymalnapredkoscObrotowa,
    this.napieciePrzejsciaNaPareSzczotek,
    this.napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone,
    this.rezystywnosc,
    this.twardosc,
    this.wspolczynnikTarciaMax,
    this.zuzyciepo50hPracy,
    this.ciezarObjetosciowy,
    this.zawartoscPopiolu,
  });
}
