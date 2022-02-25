import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class DCDataSource implements CardDataSource {
  const DCDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/dc';

    return [
      CardDto(
        name: 'Aquaman',
        image: '$imageBasePath/aquaman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Batman',
        image: '$imageBasePath/batman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mulher gato',
        image: '$imageBasePath/cat_woman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Coringa',
        image: '$imageBasePath/coringa.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Flash',
        image: '$imageBasePath/flash.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Lanterna verde',
        image: '$imageBasePath/green_lantern.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Robin',
        image: '$imageBasePath/robin.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Shazam',
        image: '$imageBasePath/shazam.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Superman',
        image: '$imageBasePath/superman.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mulher maravilha',
        image: '$imageBasePath/wonder_woman.png',
        selectedToGame: 0,
      ),
    ];
  }
}
