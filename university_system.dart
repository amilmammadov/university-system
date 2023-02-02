import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  print("E_UNEC'e xos gelmisiniz!");

  String username_d = "amilmammadov";
  String password_d = "123";
  stdout.write("Istifadeci adi: ");
  String? username = stdin.readLineSync();
  stdout.write("Parol: ");
  String? password = stdin.readLineSync();

  if (username == username_d && password == password_d) {
    print('Sisteme ugurla giris olundu!');
    print(
        'Imtahandan neticelerinizi gormek ucun fenni secin: \n1.Kimya \n2.Riyaziyyat \n3.Cografiya');
    String? choice = stdin.readLineSync();
    switch (choice) {
      case "1":
        String lessonName = "Kimya", totalResultsPoint = values();
        print("Fennin adi: $lessonName | $totalResultsPoint");
        break;
      case "2":
        String lessonName = "Riyaziyyat", totalResultsPoint = values();
        print("Fennin adi: $lessonName | $totalResultsPoint");
        break;
      case "3":
        String lessonName = "Cografiya", totalResultsPoint = values();
        print("Fennin adi: $lessonName | $totalResultsPoint");
        break;
    }

    String? doYouWanttoSeeYourResult = stdin.readLineSync();
  } else {
    print("Melumatlarinizi yeniden daxil edin");
    main(args);
  }
}

String calculate(int midtermPoint, int presentationPoint, int finalExamPoint) {
  if (midtermPoint <= 30 && presentationPoint <= 20 && finalExamPoint <= 50) {
    int totalPoint = midtermPoint + presentationPoint + finalExamPoint;
    if (totalPoint > 90) {
      String totalResultsPoint =
          "Midterm bali: $midtermPoint | Prezentasiya bali: $presentationPoint | Final imtahan bali: $finalExamPoint | Umumi netice: $totalPoint - A";
      return totalResultsPoint;
    } else if (totalPoint > 80) {
      String totalResultsPoint =
          "Midterm bali: $midtermPoint | Prezentasiya bali: $presentationPoint | Final imtahan bali: $finalExamPoint | Umumi netice: $totalPoint - B";
      return totalResultsPoint;
    } else if (totalPoint > 70) {
      String totalResultsPoint =
          "Midterm bali: $midtermPoint | Prezentasiya bali: $presentationPoint | Final imtahan bali: $finalExamPoint | Umumi netice: $totalPoint - C";
      return totalResultsPoint;
    } else if (totalPoint > 60) {
      String totalResultsPoint =
          "Midterm bali: $midtermPoint | Prezentasiya bali: $presentationPoint | Final imtahan bali: $finalExamPoint | Umumi netice: $totalPoint - D";
      return totalResultsPoint;
    } else if (totalPoint > 50) {
      String totalResultsPoint =
          "Midterm bali: $midtermPoint | Prezentasiya bali: $presentationPoint | Final imtahan bali: $finalExamPoint | Umumi netice: $totalPoint - E";
      return totalResultsPoint;
    } else {
      return "Siz imtahandan teessufki kece bilmemisiniz";
    }
  } else {
    return "Ballarinizi duzgun qeyd edin zehmet olmazsa!";
  }
}

String values() {
  stdout.write('Midterm bali: ');
  int? midtermPoint = int.parse(stdin.readLineSync()!);
  stdout.write('Prezentasiya bali: ');
  int? presentationPoint = int.parse(stdin.readLineSync()!);
  stdout.write('Final imtahan bali: ');
  int? finalExamPoint = int.parse(stdin.readLineSync()!);

  return calculate(midtermPoint, presentationPoint, finalExamPoint);
}
