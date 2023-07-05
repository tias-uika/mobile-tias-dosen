import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BahanAjar extends StatefulWidget {
  const BahanAjar({super.key});

  @override
  State<BahanAjar> createState() => _BahanAjarState();
}

class _BahanAjarState extends State<BahanAjar> {
  bool _sortNamaAscending = true;
  bool _sortTanggalAscending = true;
  bool _sortPenerbitAscending = true;

  @override
  final List<Map<String, dynamic>> _listBahanAjarMahasiswa = [
    {
      'Nama': 'RPS Pemrograman Berorientasi....',
      'Tanggal': '14 Maret 2022',
      'Penerbit': 'Lokal',
      'ISBN': '-',
    },
  ];
  void _sortNama(bool ascending) {
    setState(() {
      _sortNamaAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['Nama'].compareTo(b['Nama'])
          : b['Nama'].compareTo(a['Nama']));
    });
  }

  void _sortTanggal(bool ascending) {
    setState(() {
      _sortTanggalAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['Tanggal'].compareTo(b['Tanggal'])
          : b['Tanggal'].compareTo(a['Tanggal']));
    });
  }

  void _sortPenerbit(bool ascending) {
    setState(() {
      _sortPenerbitAscending = ascending;
      _foundName.sort((a, b) => ascending
          ? a['Penerbit'].compareTo(b['Penerbit'])
          : b['Penerbit'].compareTo(a['Penerbit']));
    });
  }

  List<Map<String, dynamic>> _foundName = [];
  @override
  initState() {
    _foundName = _listBahanAjarMahasiswa;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _listBahanAjarMahasiswa;
    } else {
      results = _listBahanAjarMahasiswa
          .where((user) =>
              user["Nama"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundName = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // TextField(
            //   onChanged: (value) => _runFilter(value),
            //   decoration: const InputDecoration(
            //       labelText: 'Search', suffixIcon: Icon(Icons.search)),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => _sortNama(!_sortNamaAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Nama',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortNamaAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => _sortTanggal(!_sortTanggalAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Tanggal Terbit',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortTanggalAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => _sortPenerbit(!_sortPenerbitAscending),
                  child: Row(
                    children: [
                      const Text(
                        'Penerbit',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // the up/down arrow that indicates the sort order
                      Icon(
                        _sortPenerbitAscending
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundName.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundName.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.85,
                                        decoration: new BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: new BorderRadius.only(
                                            topLeft:
                                                const Radius.circular(25.0),
                                            topRight:
                                                const Radius.circular(25.0),
                                          ),
                                        ),
                                      ));
                            },
                            key: ValueKey(_foundName[index]['Nama']),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    _foundName[index]['Nama'],
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Penerbit',
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          Text(
                                            'ISBN',
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ])),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '${_foundName[index]['Penerbit']}',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                          child: Row(
                                        children: <Widget>[
                                          Text(
                                            "SKS ",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '${_foundName[index]['ISBN']}',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
