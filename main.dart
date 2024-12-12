import 'dart:io';

List<Map<String, dynamic>> calendarEntries = [
  {'description': 'Mond gucken', 'date': '27.12.2024'}
];
List<String> listOfUserNames = ["Can", "Julian", "Basti", "David"];
List<int> listOfUserIDs = [1, 2, 3, 4];
List<String> listOfUserPasswords = [
  "katze05",
  "cheese11",
  "null27",
  "GrossmeisterDerUmgefallenen8"
];
List<int> listOfUserAges = [20, 18, 40, 22];
List<bool> listOfUserIsActive = [false, false, true, false];

void main() {
  // bool runProgram = true;

  // while (runProgram = true) {}

  clearConsole();
  print("\n");
  print("\t\t\t~~~~~~~~~~~~~~~~~~~~~~");
  print("\t\t\t~~~ Willkommen bei ~~~");
  print("\t\t\t~~~ Astro-Almanach ~~~");
  print("\t\t\t~~~~~~~~~~~~~~~~~~~~~~");
  print("\n");
  sleep(Duration(seconds: 5));
  clearConsole();
  print("\tWähle bitte eine Option aus:");
  print("\n");
  print("\t(A)lmanach"); // print("\t");
  print("\t(P)rofil");
  print("\t(K)alender");
  print("\n");

  String userInput = stdin.readLineSync() ?? "";

  switch (userInput) {
    case 'a' || 'A':
      clearConsole();
      print("\n");
      print("\t\t~~~Almanach~~~");
      print("\n");
      print("\tWähle bitte ein Objekt aus.");
      print("\n");
      print("\t(M)ond\t\tM(a)rs\t\t(V)enus");
      print("\n");
      String userInput = stdin.readLineSync() ?? "";

      switch (userInput) {
        case 'm' || 'M':
          clearConsole();
          print("\n");
          print("\t\t~~~Mond~~~");
          print("\n");
          print(
              "Der Mond (mittelhochdeutsch mâne; lateinisch luna) ist der einzige natürliche Satellit der Erde.");
          print(
              "Sein Name ist etymologisch verwandt mit Monat. Weil die Trabanten anderer Planeten des Sonnensystems im übertragenen Sinn meist");
          print(
              "ebenfalls als Monde bezeichnet werden, spricht man zur Vermeidung von Verwechslungen mitunter vom Erdmond.");
          print("\n");
          print("\n");
        case 'a' || 'A':
          clearConsole();
          print("\n");
          print("\t\t~~~Mars~~~");
          print("\n");
          print("\t\t  ~null~");
          print("\t\t    :(");
          print("\n");
        case 'v' || 'V':
          clearConsole();
          print("\n");
          print("\t\t~~~Venus~~~");
          print("\n");
          print("\t\t  ~null~");
          print("\t\t    :(");
          print("\n");
        default:
          print("Bitte wähle 'M', 'a' oder 'V'.");
      }
    case 'p' || 'P':
      clearConsole();
      print("\n");
      print("\t\t~~~~Profil~~~~");
      print("\n");
      print("\tName\tID\tAlter\tAktiv?");
      for (int i = 0; i <= listOfUserNames.length - 1; i++) {
        print(
            "\t${listOfUserNames[i]}\t${listOfUserIDs[i]}\t${listOfUserAges[i]}\t${listOfUserIsActive[i]}");
      }
      print("\n");

    case 'k' || "K":
      clearConsole();
      print("\n");
      print("\t\t~~~Kalender~~~");
      print("\n");
      print("\tWähle bitte eine Option aus.");
      print("\n");
      print("\t(Ü)bersicht der Einträge\t(N)euen Eintrag erstellen");
      print("\n");

      String userInput = stdin.readLineSync() ?? "";
      switch (userInput) {
        case 'ü' || 'Ü':
          for (int i = 0; i < calendarEntries.length; i++) {
            print("${calendarEntries[i]}");
          }
        case 'n' || 'N':
          print("\n");
          print("\tWas möchtest du beobachten?");
          print("\n");
          String userInput = stdin.readLineSync() ?? "";
          calendarEntries.add({'description': userInput});
          print("\n");
          print("\tWann möchtest du $userInput beobachten? TT.MM.JJJJ");
          String userInput2 = stdin.readLineSync() ?? "";
          calendarEntries.add({'date': userInput2});
          print("\t$userInput beobachten am $userInput2 hinzugefügt.");
      }
    //calendarEntries.add({'description': 'Mond gucken', 'date': '27.12.2024'})

// List<Map<String, dynamic>> calendarEntries = [{'description': 'Mond gucken', 'date': '27.12.2024'}];
    default:
      print("Bitte wähle 'A', 'P' oder 'K'.");
  }
}

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync('cls', [], runInShell: true).stdout);
  } else {
    print(Process.runSync('clear', [], runInShell: true).stdout);
  }
}
