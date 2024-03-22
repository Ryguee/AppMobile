class Enigme {
  String pays;
  String capitale;
  String enigme;

  Enigme(this.pays, this.capitale, this.enigme);

  Map<String, dynamic> toJson() {
    return {
      'pays': pays,
      'capitale': capitale,
      'enigme': enigme,
    };
  }

  factory Enigme.fromJson(Map<String, dynamic> json) {
    return Enigme(
      json['pays'] as String,
      json['capitale'] as String,
      json['enigme'] as String,
    );
  }
}
