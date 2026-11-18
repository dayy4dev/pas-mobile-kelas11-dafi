import 'package:dafi_23/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dafi_23/controllers/list_teams_controller.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(ListTeamsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "English Premier League Teams"),
      body: Container(
        margin: const EdgeInsets.all(16),
        // height: 200,
        child: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller.teams.length,
                  itemBuilder: (context, index) {
                    final team = controller.teams[index];
                    return SizedBox(
                      width: 320,
                      child: InkWell(
                        onTap: () {
                          // Get.toNamed(
                          //   Routes.detailTeam,
                          //   arguments: {
                          //     'strTeam': team.strTeam,
                          //     'strBadge': team.strBadge,
                          //     'strStadium': team.strStadium,
                          //     'intFormedYear': team.intFormedYear,
                          //     'strLocation': team.strLocation,
                          //     'strDescriptionEN': team.strDescriptionEN,
                          //   },
                          // );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              leading: team.strBadge.isNotEmpty
                                  ? Image.network(
                                      team.strBadge,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              const Icon(Icons.sports_soccer),
                                    )
                                  : const Icon(Icons.sports_soccer),
                              title: Text(
                                team.strTeam,
                                style: const TextStyle(fontSize: 16),
                              ),
                              subtitle: Text(
                                team.strStadium,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
