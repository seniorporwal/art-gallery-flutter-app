import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import '../../widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Hokusai',
                imagePath:
                    'images/Portrait_of_Katsushika_Hokusai_by_disciple_Keisai_Eisen.png',
                editImage1: 'images/great wave of kanagawa.png',
                editImage2: 'images/japan.png',
                editImage3: 'images/mountfuji.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Vincent van Gogh',
                      imagePath:
                          'images/29872_Masters-of-Art-–-Vincent-van-Gogh_r-910x910.png',
                      editImage1: 'images/vin gogh self portrait.png',
                      editImage2:
                          'images/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
                      editImage3: 'images/van gogh field with green.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Salvador Dali',
                      imagePath: 'images/Salvador-Dali-PNG-HD-Isolated.png',
                      editImage1: 'images/elephant dali.png',
                      editImage2: 'images/gold dali clock.png',
                      editImage3:
                          'images/The-persistence-of-memory-painting-by-S-Dali-1931-Modern-Art-Museum-N-York.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Leonardo Da Vinci',
                imagePath: 'images/leonardo-da-vinci-6476535_1280.png',
                editImage1: 'images/Mona_Lisa.png',
                editImage2: 'images/Lady with an Ermine.png',
                editImage3: 'images/lastsupper.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
