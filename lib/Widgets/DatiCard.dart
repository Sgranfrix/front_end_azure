
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_azure/Model/Objects/DatiSportivi.dart';

class DatiCard extends StatelessWidget{

  final DatiSportivi dati;


  DatiCard({Key? key, required this.dati}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(dati.nomeUtente);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow('Nome Utente:', dati.nomeUtente),
            _buildInfoRow('Durata allenamento:', '${dati.durata.toString()} minuti'),
            _buildInfoRow("Tipo dell'attività svolta:", dati.tipoAttivita),
            _buildInfoRow("Note sull'allenamento:", dati.note),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String? value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            value!,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),

        ],
      ),
    );
  }

}