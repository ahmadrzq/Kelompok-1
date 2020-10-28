import 'package:flutter/material.dart';

// Make stateful widget, karena why not ?
class TestBottomAppBar extends StatefulWidget {
  // Ini entah buat apa ane kagak tau
  const TestBottomAppBar({Key key}) : super(key: key);

  @override
  _TestBottomAppBarState createState() => _TestBottomAppBarState();
}

// Entah ini apa artinya
class _TestBottomAppBarState extends State<TestBottomAppBar> {
  @override
  // Ngebuild buildContext berupa context
  Widget build(BuildContext context) {
    return Scaffold(
      // Ngasih AppBar diatas
      appBar: AppBar(
        centerTitle: true,
        title: Text('Testing bottomAppBar'),
      ),
      // Ngasih tulisan ditengah
      body: Center(
        child: Text('Jangan tekan AppBar yang dibawah'),
      ),
      // Ngasih AppBar dibawah dengan cara manggil _buildBottomAppbar
      bottomNavigationBar: _buildBottomAppBar(context),
    );
  }

// Ngebuild Appbar dibawah dengan nama _buildBottomAppbar dan build context (lagi)
  BottomAppBar _buildBottomAppBar(BuildContext context) {
    // Buat munculin AppBarnya
    return BottomAppBar(
      // nyamain warna AppBar ama warna utama aplikasi
      color: Theme.of(context).primaryColor,
      // Ini lagi buat anak namanya Row
      child: Row(
        children: <Widget>[
          // Ngebuat icon yang bisa diteken, tapi jangan diteken
          IconButton(
            // Buat milih icon
            icon: const Icon(Icons.menu),
            // fungsi kalo diteken, munculin modal dari bawah
            onPressed: () => showModalBottomSheet(
              // konteks
              context: context,
              // ngebuild konteks(lagi) dan dijaaiin container
              builder: (BuildContext context) => Container(
                // naruh ditengah
                alignment: Alignment.center,
                // tinggi modal yang muncul
                height: 100.0,
                // Udah dibilangin
                child: const Text('Udah dibilang jangan ditekan  --___--'),
              ),
            ),
          ),
          // Ngapain diteken anjimm, ane capek buatnya lagi vangke
          IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) => Container(
                        alignment: Alignment.center,
                        height: 100.0,
                        // Maksa anjimm
                        child: const Text('Dah dibilang jangan diteken njimm'),
                      )))
        ],
      ),
    );
  }
}
