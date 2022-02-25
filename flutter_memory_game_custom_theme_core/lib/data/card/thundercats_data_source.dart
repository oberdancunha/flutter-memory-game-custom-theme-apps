import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class ThundercatsDataSource implements CardDataSource {
  const ThundercatsDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/thundercats';

    return [
      CardDto(
        name: 'Cheetara',
        image: '$imageBasePath/cheetara.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Lion-o',
        image: '$imageBasePath/lion-o.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mumm-ra forte',
        image: '$imageBasePath/mumm-ra_strong.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mumm-ra fraco',
        image: '$imageBasePath/mumm-ra_weak.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Panthro',
        image: '$imageBasePath/panthro.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Espada justiceira',
        image: '$imageBasePath/seven-branched_sword.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Snarf',
        image: '$imageBasePath/snarf.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Tygra',
        image: '$imageBasePath/tygra.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Willy Kat',
        image: '$imageBasePath/willy_kat.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Willy Kit',
        image: '$imageBasePath/willy_kit.png',
        selectedToGame: 0,
      ),
    ];
  }
}
