import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class AvengersDataSource implements CardDataSource {
  const AvengersDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/avengers';

    return [
      CardDto(
        name: 'Pantera Negra',
        image: '$imageBasePath/black_phanter.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Viúva Negra',
        image: '$imageBasePath/black_widow.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Capitão América',
        image: '$imageBasePath/captain_america.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Doutor Estranho',
        image: '$imageBasePath/doctor_strange.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Hulk',
        image: '$imageBasePath/hulk.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Homem de Ferro',
        image: '$imageBasePath/ironman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Feiticeira Escarlate',
        image: '$imageBasePath/scarlet_witch.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Homem-Aranha',
        image: '$imageBasePath/spiderman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Thanos',
        image: '$imageBasePath/thanos.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Thor',
        image: '$imageBasePath/thor.png',
        selectedToGame: 0,
      ),
    ];
  }
}
