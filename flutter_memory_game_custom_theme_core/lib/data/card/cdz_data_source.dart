import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class CDZDataSource implements CardDataSource {
  const CDZDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/cdz';

    return [
      CardDto(
        name: 'Camus de aquário',
        image: '$imageBasePath/camus.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Hilda',
        image: '$imageBasePath/hilda.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Hyoga de cisne',
        image: '$imageBasePath/hyoga.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Ikki de Fênix',
        image: '$imageBasePath/ikki.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Poseidon',
        image: '$imageBasePath/poseidon.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Saga de gêmeos',
        image: '$imageBasePath/saga.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Saori de atena',
        image: '$imageBasePath/saori.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Seiya de pegasus',
        image: '$imageBasePath/seiya.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Shiryu de dragão',
        image: '$imageBasePath/shiryu.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Shun de andromeda',
        image: '$imageBasePath/shun.png',
        selectedToGame: 0,
      ),
    ];
  }
}
