import 'dart:js' as js;

import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenExternalLink {
  open({required String number}) async {
    //   'https://api.whatsapp.com/send?phone=seunumerodetelefone&text=sua%20mensagem.';
    var whatsappUrl =
        "https://wa.me/5591993731168?text=Olá,tudo bem ? Eu gostaria de Falar sobre consórcio";

    await launchUrl(
      Uri.parse(whatsappUrl),
      mode: LaunchMode.platformDefault,
      // forceWebView = true,       //enables WebView
      // enableJavaScript = false  //disables JavaScript
    );
  }

  openMaps() {
    // MapsLauncher.launchCoordinates(-1.370122501836915, -48.40876552543959,
    //     'A realização do seu sonho é aqui');
    MapsLauncher.launchQuery('Speed Motos PA');
  }
}
