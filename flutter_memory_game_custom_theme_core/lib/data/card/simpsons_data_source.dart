import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class SimpsonsDataSource implements CardDataSource {
  const SimpsonsDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/simpsons';

    return [
      CardDto(
        name: 'Bart',
        image: '$imageBasePath/bart.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Burns',
        image: '$imageBasePath/burns.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Homer',
        image: '$imageBasePath/homer.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Krusty',
        image: '$imageBasePath/krusty.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Lisa',
        image: '$imageBasePath/lisa.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Maggie',
        image: '$imageBasePath/maggie.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Marge',
        image: '$imageBasePath/marge.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Moe',
        image: '$imageBasePath/moe.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Otto',
        image: '$imageBasePath/otto.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Sideshow Bob',
        image: '$imageBasePath/sideshow_bob.png',
        selectedToGame: 0,
      ),
    ];
  }
}
