import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class AddBudgetFormPage extends StatefulWidget {
  const AddBudgetFormPage({super.key});

  @override
  State<AddBudgetFormPage> createState() => _AddBudgetFormPageState();
}

class _AddBudgetFormPageState extends State<AddBudgetFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final _typeController = TextEditingController();
  final _dateController = TextEditingController();
  List<String> listJenis = <String>['Pemasukkan', 'Pengeluaran'];
  DateTime date = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Budget'),
        ),
        drawer: MyDrawer(),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [

                // field input Nama
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      hintText: "Contoh: Beli Sate Pacil",
                      labelText: "Nama",
                      icon: const Icon(Icons.title),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // field input Nominal
                TextFormField(
                  controller: _amountController,
                  decoration: InputDecoration(
                      hintText: "Contoh: 10000",
                      labelText: "Nominal",
                      icon: const Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong';
                    } else if (int.tryParse(value) == null) {
                      return 'Nominal harus berupa angka';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // field pilih tipe
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Tipe',
                    border: OutlineInputBorder(),
                  ),
                  items: const[
                    DropdownMenuItem(
                      value: 'Pemasukan',
                      child: Text('Pemasukan'),
                    ),
                    DropdownMenuItem(
                      value: 'Pengeluaran',
                      child: Text('Pengeluaran'),
                    ),
                  ],
                  onChanged: (value) =>
                      setState(() {
                        _typeController.text = value!;
                      }),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tipe tidak boleh kosong';
                    }
                    return null;
                  },),
                const SizedBox(height: 16),

              ],
            )
        )
    );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Budget'),
        ),
        drawer: MyDrawer(),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [

                // field input Nama
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      hintText: "Contoh: Beli Sate Pacil",
                      labelText: "Nama",
                      icon: const Icon(Icons.title),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // field input Nominal
                TextFormField(
                  controller: _amountController,
                  decoration: InputDecoration(
                      hintText: "Contoh: 10000",
                      labelText: "Nominal",
                      icon: const Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong';
                    } else if (int.tryParse(value) == null) {
                      return 'Nominal harus berupa angka';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // field pilih tipe
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Tipe',
                    border: OutlineInputBorder(),
                  ),
                  items: const[
                    DropdownMenuItem(
                      value: 'Pemasukan',
                      child: Text('Pemasukan'),
                    ),
                    DropdownMenuItem(
                      value: 'Pengeluaran',
                      child: Text('Pengeluaran'),
                    ),
                  ],
                  onChanged: (value) =>
                      setState(() {
                        _typeController.text = value!;
                      }),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tipe tidak boleh kosong';
                    }
                    return null;
                  },),
                const SizedBox(height: 16),

              ],
            )
        )
    );
}

setState(Null Function() param0) {
}
}
