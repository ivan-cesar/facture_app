class Facture {
  int? id;
  String? intituleFacture;
  int? montant;
  String? dateAdded;

Facture({
     required this.dateAdded,
     this.id,
     required this.montant,
     required this.intituleFacture,
     });


  // Méthode pour créer une instance du modèle à partir d'un snapshot Firestore
factory Facture.fromJson(Map<String, dynamic> json){
 return Facture(
      dateAdded: json['dateAdded']?.toString() ?? '', // Utilisez une chaîne vide ('') si la valeur est null
      id: json['id'] as int?,
      montant: json['montant'] as int? ?? 0, // Utilisez 0 si la valeur est null
      intituleFacture: json['intituleFacture'] as String? ?? '', // Utilisez une chaîne vide ('') si la valeur est null

 );
}
Map<String, dynamic> toJson(){

  return{
    'date':dateAdded,
    'id':id,
    'montant':montant,
    'intituleFacture':intituleFacture,
  };
}
}
