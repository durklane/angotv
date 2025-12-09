lib/screens/pacotes_screen.dart
import 'package:flutter/material.dart';
import '../services/download_service.dart';

class PacotesScreen extends StatelessWidget {
  const PacotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pacotes para Download"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          pacoteCard(
            context,
            titulo: "Pacote Diário (50MB)",
            descricao:
                "Inclui 30 vídeos offline (novelas, séries, notícias).",
            tamanho: "50MB",
            url:
                "https://raw.githubusercontent.com/durklane/angotv/main/pacotes/Pacote_Teste.zip",
          ),
        ],
      ),
    );
  }

  Widget pacoteCard(BuildContext context,
      {required String titulo,
      required String descricao,
      required String tamanho,
      required String url}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              descricao,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.storage, color: Colors.grey),
                const SizedBox(width: 6),
                Text("Tamanho: $tamanho"),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.download),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50),
              ),
              label: const Text("BAIXAR PACOTE"),
              onPressed: () {
                DownloadService.downloadAndExtract(context, url, titulo);
              },
            ),
          ],
        ),
      ),
    );
  }
}
