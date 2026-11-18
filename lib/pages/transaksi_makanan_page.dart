import 'package:dafi_23/components/info_section.dart';
import 'package:dafi_23/components/price_text.dart';
import 'package:dafi_23/controllers/transaksi_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.namaMakanan)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
              controller.gambarMakanan,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    controller.namaMakanan,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Center(child: PriceText(price: controller.hargaMakanan)),
                const SizedBox(height: 16),
                InfoSection(title: "Deskripsi", content: controller.deskripsi),

                const SizedBox(height: 16),
                Text("Jumlah di beli", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Obx(
                  () => Row(
                    children: [
                      IconButton(
                        onPressed: controller.kurangi,
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
                      Text(
                        '${controller.jumlah.value}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: controller.tambah,
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Obx agar teksnya ikut berubah saat jumlah berubah.
                Obx(
                  () => InfoSection(
                    title: 'Struk Transaksi',
                    content:
                        'Subtotal = Rp ${controller.subtotal}\n'
                        'PPN (5%) = Rp ${controller.ppn}\n'
                        'Total Bayar = Rp ${controller.total}\n',
                  ),
                ),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.all(16), child: Column()),
        ],
      ),
    );
  }
}
