class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  BicicletaSmart.basica({
    required this.marca,
    required this.modelo,
    required this.anio,
  })  : tieneGPS = false,
        tieneMonitorRitmo = false;

  BicicletaSmart.premium({
    required this.marca,
    required this.modelo,
    required this.anio,
  })  : tieneGPS = true,
        tieneMonitorRitmo = true;

  void descripcion() {
    print('Bicicleta $marca $modelo ($anio) | GPS: $tieneGPS | Monitor Ritmo: $tieneMonitorRitmo');
  }
}

void main() {
  final biciBasica = BicicletaSmart.basica(marca: 'Trek', modelo: 'Alpha', anio: 2023);
  biciBasica.descripcion();

  final biciPremium = BicicletaSmart.premium(marca: 'Specialized', modelo: 'ProX', anio: 2024);
  biciPremium.descripcion();
}
