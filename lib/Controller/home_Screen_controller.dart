import 'package:api_data_sample_oct18/Model/student_model.dart';
import 'package:api_data_sample_oct18/dummy_db.dart';

class HomeScreenController {
  static StudentModel? modelObject;
  static List<StudentModel> studentModelList = [];

  static covertStudentModel() {
    modelObject = StudentModel(
        name: DummyDb.student['name'],
        place: DummyDb.student["place"],
        phn: DummyDb.student["phone"]);
  }

  static convertStudentlistModel() {
    // studentModelList = List.generate(
    //   DummyDb.studentlist.length,
    //   (index) => StudentModel(
    //     name: DummyDb.studentlist[index]["name"],
    //     phn: DummyDb.studentlist[index]["phone"],
    //     place: DummyDb.studentlist[index]["place"],
    //   ),
    // );

    studentModelList = DummyDb.studentlist
        .map(
          (e) => StudentModel(
            name: e["name"],
            place: e["place"],
            phn: e["phone"],
          ),
        )
        .toList();

    print(studentModelList[0].name);
  }
}
