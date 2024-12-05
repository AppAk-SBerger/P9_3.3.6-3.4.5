import 'dart:io';

void main() {
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
  while (true) {
    /*
    print("\tWähle bitte eine Option aus:");
    print("\n");
    print("\t(A)lmanach"); // print("\t");
    print("\t(P)rofil");
    print("\t(K)alender");
    */
    String? userInput = stdin.readLineSync();
    switch (userInput) {
      case 'A':
        clearConsole();
        print("\t\t~~~Almanach~~~");
        break;
      case 'P':
        clearConsole();
        print("\t\t~~~~Profil~~~~");
        break;
      case 'K':
        clearConsole();
        print("\t\t~~~Kalender~~~");
        break;
      default:
        print("Bitte wähle 'A', 'P' oder 'K'.");
    }
  }
}

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync('cls', [], runInShell: true).stdout);
  } else {
    print(Process.runSync('clear', [], runInShell: true).stdout);
  }
}
