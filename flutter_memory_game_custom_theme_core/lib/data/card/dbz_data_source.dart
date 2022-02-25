import '../../infrastructure/card/card_data_source.dart';
import '../../infrastructure/card/card_dto.dart';

class DBZDataSource implements CardDataSource {
  const DBZDataSource();

  @override
  // ignore: long-method
  List<CardDto> create() {
    const imageBasePath = 'assets/images/cards/dbz';

    return [
      CardDto(
        name: 'Cell',
        image: '$imageBasePath/cell.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Esferas do dragão',
        image: '$imageBasePath/dragon_ball.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Freeza',
        image: '$imageBasePath/freeza.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Goku criança',
        image: '$imageBasePath/goku_child.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Goku',
        image: '$imageBasePath/goku.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Mestre kame',
        image: '$imageBasePath/kame_master.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Majin buu',
        image: '$imageBasePath/majin_buu.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Picollo',
        image: '$imageBasePath/picollo.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Shenlong',
        image: '$imageBasePath/shenlong.png',
        selectedToGame: 0,
      ),
      CardDto(
        name: 'Vegeta',
        image: '$imageBasePath/vegeta.png',
        selectedToGame: 0,
      ),
    ];
  }
}
