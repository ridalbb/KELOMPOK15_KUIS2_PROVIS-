import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final textEditController = TextEditingController();
  String nama = "";
  String skor = "";
  String jenis = "";
  String imbalHasil = "";
  String hargaUnit = "";
  String danaKelolaan = "";
  String Tahun = "6 Bulan";

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> PilihanTahun = [];
    var itm1 = const DropdownMenuItem<String>(
      value: "6 Bulan",
      child: Text("6 Bulan"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "1 Tahun",
      child: Text("1 Tahun"),
    );
    PilihanTahun.add(itm1);
    PilihanTahun.add(itm2);
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Center(
            child: Column(
          children: [
            DropdownButton(
                  value: Tahun,
                  items: PilihanTahun,
                  onChanged: (String? newValue) {
                    setState(() {
                      if (newValue != null) {
                        Tahun = newValue;
                      }
                    });
                  },
                ),
                  SizedBox(height: 16),
           SizedBox(height: 32),
            Text(
              'Securinvest Sharia Sukuk Fund',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '☆4.1 - Pendapatan Tetap',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Imbal Hasil'),
                Text('6.2%'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Harga Unit'),
                Text('Rp.1.080'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dana Kelolaan'),
                Text('Rp.3.3T'),
              ],
            ),
            
            SizedBox(height: 32),
            Text(
              'Star Stable Income Fund',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '☆3.2 - Pendapatan Tetap',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Imbal Hasil'),
                Text('12%'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Harga Unit'),
                Text('Rp.1.070'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dana Kelolaan'),
                Text('Rp.256M'),
              ],
            ),
           
          ]
        )),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 15'),
            content: const Text(
                'Ridwan Albana (ridwanalbana788@upi.edu) ; Rafly Putra Santoso (rafly.santoso@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              '"Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang".'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
