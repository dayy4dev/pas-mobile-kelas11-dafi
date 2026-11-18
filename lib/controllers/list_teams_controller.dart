import 'package:dafi_23/models/team_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListTeamsController extends GetxController {
  var isLoading = false.obs;

  var listTeamsModel = Rxn<PremierLeagueModel>();

  // biar gampang dipakai di ListView
  RxList<Team> teams = <Team>[].obs;

  // method hit API
  void getTeams() async {
    try {
      isLoading.value = true;
      final url = Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League",
      );

      final response = await http.get(url);

      isLoading.value = false;
      if (response.statusCode == 200) {
        listTeamsModel.value = premierLeagueModelFromJson(response.body);
        // untuk refresh list biar Obx di page ke-update
        teams.value = listTeamsModel.value?.teams ?? [];
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("gagal", e.toString());
      print("error nya $e");
    }
  }

  @override
  void onInit() {
    getTeams(); // agar langsung ambil data
    super.onInit();
  }
}
