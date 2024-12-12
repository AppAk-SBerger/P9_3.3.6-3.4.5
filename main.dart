import 'dart:io';

List<Map<String, dynamic>> calendarEntries = [
  /*{'description': 'Mond gucken', 'date': '27.12.2024'}*/
];

String userInputString = "";
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
  splashScreen();
  // mainMenu();
}

void splashScreen() {
  clearConsole();
  print("\n");
  print("\t\t\t~~~~~~~~~~~~~~~~~~~~~~");
  print("\t\t\t~~~ Willkommen bei ~~~");
  print("\t\t\t~~~ Astro-Almanach ~~~");
  print("\t\t\t~~~~~~~~~~~~~~~~~~~~~~");
  print("\n");
  wait(5);
  mainMenu();
}

void mainMenu() {
  clearConsole();
  print("\tWähle bitte eine Option aus:");
  print("\n");
  print("\t(A)lmanach");
  print("\t(P)rofil");
  print("\t(K)alender");
  print("\n");
  String userDecision = userInputToString();
  switch (userDecision) {
    case 'a' || 'A':
      almanach();
    case 'p' || 'P':
      profil();
    case 'k' || "K":
      calendar();
    default:
      print("Bitte wähle 'A', 'P' oder 'K'.");
  }
}

void almanach() {
  clearConsole();
  print("\n");
  print("\t\t~~~Almanach~~~");
  print("\n");
  print("\tWähle bitte ein Objekt aus.");
  print("\n");
  print("\t(M)ond\t\tM(a)rs\t\t(V)enus\t\t(Z)urück");
  print("\n");
  String userDecision = userInputToString();
  switch (userDecision) {
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
    case 'z' || 'Z':
      mainMenu();
    default:
      print("Bitte wähle 'M', 'a' oder 'V'.");
  }
}

void profil() {
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
  wait(5);
}

void calendar() {
  clearConsole();
  print("\n");
  print("\t\t~~~Kalender~~~");
  print("\n");
  print("\tWähle bitte eine Option aus.");
  print("\n");
  print("\t(Ü)bersicht der Einträge\t(N)euen Eintrag erstellen");
  print("\n");
  String userDecision = userInputToString();
  switch (userDecision) {
    case 'ü' || 'Ü':
      viewCalendarEntries();
    case 'n' || 'N':
      addCalendarEntries();
    case 'z' || 'Z':
      mainMenu();
  }
}

viewCalendarEntries() {
  for (int i = 0; i < calendarEntries.length; i++) {
    print("${calendarEntries[i]}");
  }
  wait(5);
  calendar();
}

addCalendarEntries() {
  print("\n");
  print("\tWas möchtest du beobachten?");
  print("\n");
  String userInputDescription = userInputToString();
  calendarEntries.add({'description': userInputDescription});
  print("\n");
  print("\tWann möchtest du $userInputDescription beobachten? TT.MM.JJJJ");
  String userInputDate = userInputToString();
  calendarEntries.add({'date': userInputDate});
  print(
      "\tBeobachtung von $userInputDescription am $userInputDate hinzugefügt.");
  wait(3);
  calendar();
}

String userInputToString() {
  userInputString = stdin.readLineSync() ?? "";
  return userInputString;
}

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync('cls', [], runInShell: true).stdout);
  } else {
    print(Process.runSync('clear', [], runInShell: true).stdout);
  }
}

void wait(int forSeconds) {
  for (int i = 0; i < forSeconds; i++) {
    sleep(Duration(seconds: 1));
    //print("${i + 1}.schleife\t\ti=$i\t\t${forSeconds - i}"); //diagnostics
  }
  //print("Schleife durch."); //diagnostics
  return;
}
