import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class WorldCup2022DataSource implements CardDataSource {
  const WorldCup2022DataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/world_cup_2022';

    return [
      CardDto(
        name: 'Al Rihla',
        image: '$imageBasePath/al_rihla.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'CR7',
        image: '$imageBasePath/cr7.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Laeeb',
        image: '$imageBasePath/laeeb.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Lukaku',
        image: '$imageBasePath/lukaku.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mbappe',
        image: '$imageBasePath/mbappe.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Messi',
        image: '$imageBasePath/messi.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Muller',
        image: '$imageBasePath/muller.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Son',
        image: '$imageBasePath/son.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Van Dijk',
        image: '$imageBasePath/van_dijk.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Vini Jr',
        image: '$imageBasePath/vini_jr.png',
        selectedToGame: 0,
      ),
    ];
  }
}
