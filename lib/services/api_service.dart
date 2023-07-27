import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/facture.dart';

class ApiService {
  final String apiUrl = 'http://45.155.37.111:8055/api/v1/findAllFactures'; // Remplacez l'URL par l'URL réelle de votre API

  Future<List<Facture>> getUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      print("JJJJJSSSSSSSSSSOOOOOOOOOOO${jsonResponse}");
        // Supposons que votre API retourne une clé "data" qui contient une liste de factures
      List<dynamic> factureData = jsonResponse['content'];
 // Convertir la liste de données en une liste d'objets Facture
      List<Facture> factures = factureData.map((facture) => Facture.fromJson(facture)).toList();
      return factures;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
