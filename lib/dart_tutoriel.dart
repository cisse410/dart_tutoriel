import 'dart:io';
import 'dart:math';

void stringMethod() {
  String name = "NKS";
  String string = "Dart est un language de programmation. Dart ..";
  print(name.codeUnits);
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.length);
  print(name.runes);
  print(name.split(""));
  print(name.toLowerCase());
  print("code ascii ${name.codeUnitAt(0)}");
  print("name: ${name.toUpperCase()}");
  print(name.contains('K'));
  print(string.replaceAll('Dart', 'JAVA'));
  var stringSpliting = string.split('');
  print(stringSpliting);
  print("Revered : ${string.split('').reversed.join()}");
}

void conditionAndLoopStatement() {
  int choice = 0;
  print("Veuillez saisir votre nom: ");
  String? name = stdin.readLineSync();
  print("\t\t\t\t========== Bienvenue $name !!! =============\n\n");
  print(
      "Avant d'acceder a nos services, nous avons besoin quelques informations pour pouvoir vous guider.\n");
  print("Veuillez saisir votre age : ");
  int? age = int.parse(stdin.readLineSync()!);
  if (age > 18) {
    print(
        "Congrat Dear $name! veuillez preciser le service que vous voudrais bien acceder : ");
    print(
        "\t\t\t\t================= Nos services : ==========================\n\n\n");
    print("\t\t1: HR\n");
    print("\t\t2: Direction de la scolarite\n");
    print("\t\t3: Serice Comptable\n");
    print("Veuillez preciser votre choix: ");
    choice = int.parse(stdin.readLineSync()!);
    while (choice < 1 || choice > 3) {
      print(
          "Le choix doit etre compris entre 1 et 3\nSaisir un choix valide: ");
      choice = int.parse(stdin.readLineSync()!);
    }
    switch (choice) {
      case 1:
        print(
            "L'agent est informe ! Il va venir d'un moment a l'autre pour vous assiter");
        break;
      case 2:
        print("Le service comptable est juste a votre gauche");
        break;
      case 3:
        print(
            "Pour des raisons independents de notre volonte, le service comptable est momentement indisponible.\nNous nous excusons de vous deplacer sans informer.\nMerci pour votre confiance.!");
      default:
        print("Choix invalide, veuillez revoir les options disponibles");
        break;
    }
    print("Toujours plus proche de vous :)");
  } else {
    print(
        "Ce service n'est pas dedie au gens qui ont un age inferieur ou egal a votre votre age : $age");
  }
}

void forStatements() {
  print(
      "Ce programme permet de determiner la table de mutiplication d'un nombre donne");
  print("Saisir un nombre: ");
  int? number = int.parse(stdin.readLineSync()!);
  print("Voici la table de mutiplication de $number: ");
  for (int i = 0; i <= 10; i++) {
    if (number * i < 10) {
      print("\t$number * $i = 0${number * i}");
    } else {
      print("\t$number * $i = ${number * i}");
    }
  }
}

void forEachLoop() {
  List<String> etudiants = [
    "Mouhamedoune FALL",
    "Mamie Awa WATT",
    "Khady NIANG",
    "Ousamne MBATHIE",
    "Mamadou Moustapha THIAM",
    "Latyr Omar DIEDHIOU",
    "Seydina Issa LAYE DIAGNE",
    "Diaba NDAO",
    "Fatou SECK",
    "NKS",
    "Assane DIA",
    "Mouhamed NDIAYE"
  ];
  List<double> notes = [12, 14, 15, 11, 15, 16, 17, 13, 13, 15, 15, 16];
  double totalNotes = 0, moyenneGlobale = 0;
  print("\n\t\tListe des etudiants\n");
  for (var etudiant in etudiants) {
    print(etudiant);
  }
  for (var note in notes) {
    totalNotes += note;
  }
  moyenneGlobale = totalNotes / etudiants.length;
  print("Le nombre total d'etudiant est : ${etudiants.length}");
  print("La moyenne de la classe est : $moyenneGlobale");
}

int fibonacci(int n) {
  if (n < 2) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Math in dart

void mathFunctions() {
  Random random = Random();
  int aleatoire = random.nextInt(15);

  print("Le nombre aleatoire est $aleatoire");
  print("Saisir un nombre: ");
  int? number = int.parse(stdin.readLineSync()!);
  print("La racine carree de $number est ${sqrt(number)}");
  print("Le carre de $number est ${pow(number, 2)}");
}

void listesInDart() {
  List<String> names = ['Moustapha', 'Moussa', 'Fatou', 'Aliou'];
  for (var name in names) {
    print(name);
  }
  // CREATION D'UNE LISTE D'ENTIER AVEC UNE TAILLE DONNEE
  var liste = List<int>.filled(5, 0);
  print(liste);
}
