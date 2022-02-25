import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class FlintstonesDataSource implements CardDataSource {
  const FlintstonesDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/flintstones';

    return [
      CardDto(
        name: 'Bam bam',
        image: '$imageBasePath/bamm-bamm.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Barney',
        image: '$imageBasePath/barney.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Betty',
        image: '$imageBasePath/betty.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Carro',
        image: '$imageBasePath/car.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Dino',
        image: '$imageBasePath/dino.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Fred e Wilma',
        image: '$imageBasePath/fred_wilma.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Fred',
        image: '$imageBasePath/fred.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Hoppy',
        image: '$imageBasePath/hoppy.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Pedrita',
        image: '$imageBasePath/pebbles.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Wilma',
        image: '$imageBasePath/wilma.png',
        selectedToGame: 0,
      ),
    ];
  }
}
