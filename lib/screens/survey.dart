import 'package:flutter/material.dart';

import 'package:gsb_invest_coach/constants/api.dart';
import 'package:gsb_invest_coach/models/Question.dart';
import 'package:gsb_invest_coach/networks/network_helper.dart';
import 'package:gsb_invest_coach/networks/network_service.dart';
import 'package:gsb_invest_coach/networks/network_enums.dart';
import 'package:gsb_invest_coach/widgets/primary_button.dart';
import 'package:gsb_invest_coach/widgets/question_builder.dart';
import 'package:gsb_invest_coach/widgets/question_progress_bar.dart';
import 'package:gsb_invest_coach/widgets/radio_list.dart';

class ServeyScreen extends StatefulWidget {
  const ServeyScreen({Key? key}) : super(key: key);

  @override
  _ServeyScreenState createState() => _ServeyScreenState();
}

class _ServeyScreenState extends State<ServeyScreen> {
  late Future<List<Question>> questions = getQuestions();
  int numq = 4;
  var r_value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("แบบประเมินความเสี่ยง"),
        centerTitle: true,
        shadowColor: Colors.blueGrey[400],
        elevation: 1,
      ),
      body: FutureBuilder(
        future: questions,
        builder: ((context, AsyncSnapshot<List<Question>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("ERROR: ${snapshot.error}"));
          } else {
            /// snapshot.hasData
            var qs = snapshot.data;
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const QuestionProgressBar(
                        currQuestion: 3, countQuestion: 10),
                    QuestionBuilder(question: qs![0]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          PrimaryButton(
                              isOutlined: true,
                              onPressed: () {},
                              child: const Text("ย้อนกลับ")),
                          PrimaryButton(
                              onPressed: () {}, child: const Text("ถัดไป")),
                        ])
                  ],
                ),
              ),
            );
          }
        }),
      ),
    );
  }

  Future<List<Question>> getQuestions() async {
    var res = await NetWorkService.sendRequest(
        requestType: RequestType.post, url: ApiConstantValues.apiUrl);
    return await NetworkHelper.handleResponse(
        response: res,
        onFailureCallback: (errorType, msg, response) {
          //  here want to show the error
          return [];
        },
        onSuccessCallback: (res) =>
            Question.listMapToListQuestion(res['results']));
  }
}
