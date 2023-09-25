import 'organization.dart';

void main(List<String> args) {
  // Flutter developers
  FlutterDeveloper flutterDeveloper1 = FlutterDeveloper(1, 5500,
      name: "Mohamed",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456789",
      address: "Cairo, Egypt",
      age: 25,
      canUseCleanArc: true,
      canUseFirebase: true,
      canUseBloc: true);
  FlutterDeveloper flutterDeveloper2 = FlutterDeveloper(2, 7000,
      name: "Ahmed",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456790",
      address: "Cairo, Egypt",
      age: 26,
      canUseCleanArc: true,
      canUseFirebase: true,
      canUseBloc: true);
  FlutterDeveloper flutterDeveloper3 = FlutterDeveloper(14, 6000,
      name: "Youssef",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456790",
      address: "Banha, Egypt",
      age: 22,
      canUseCleanArc: true,
      canUseFirebase: true,
      canUseBloc: true);
  FlutterDeveloper flutterDeveloper4 = FlutterDeveloper(13, 4000,
      name: "ziad",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456790",
      address: "dokii, Egypt",
      age: 20,
      canUseCleanArc: true,
      canUseFirebase: true,
      canUseBloc: true);
  FlutterDeveloper flutterDeveloper5 = FlutterDeveloper(19, 48000,
      name: "mariam",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456790",
      address: "Banha, Egypt",
      age: 21,
      canUseCleanArc: true,
      canUseFirebase: true,
      canUseBloc: true);
// Backend developers
  BackendDeveloper backendDeveloper1 = BackendDeveloper(3, 6000,
      name: "Ali",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456791",
      address: "Cairo, Egypt",
      age: 27,
      canUseLaravel: true,
      canUseDjango: true,
      canUseExpressJs: true);
  BackendDeveloper backendDeveloper2 = BackendDeveloper(4, 6800,
      name: "Omar",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456792",
      address: "Cairo, Egypt",
      age: 28,
      canUseLaravel: true,
      canUseDjango: true,
      canUseExpressJs: true);
  BackendDeveloper backendDeveloper3 = BackendDeveloper(11, 5000,
      name: "John",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456789",
      address: "Cairo, Egypt",
      age: 25,
      canUseLaravel: true,
      canUseDjango: true,
      canUseExpressJs: true);
  BackendDeveloper backendDeveloper4 = BackendDeveloper(20, 3000,
      name: "sara",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456789",
      address: "Cairo, Egypt",
      age: 25,
      canUseLaravel: true,
      canUseDjango: false,
      canUseExpressJs: true);
// UI/UX developers
  UiUxDeveloper uiUxDeveloper1 = UiUxDeveloper(5, 4000,
      name: "Sara",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456793",
      address: "Cairo, Egypt",
      age: 29,
      canUseFigma: true,
      canUseAdobeXd: true);
  UiUxDeveloper uiUxDeveloper2 = UiUxDeveloper(6, 5800,
      name: "Fatima",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456794",
      address: "Cairo, Egypt",
      age: 30,
      canUseFigma: true,
      canUseAdobeXd: true);
  UiUxDeveloper uiUxDeveloper3 = UiUxDeveloper(17, 6200,
      name: "Khaled",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456795",
      address: "Cairo, Egypt",
      age: 31,
      canUseFigma: true,
      canUseAdobeXd: true);
// Accountant
  Accountant KhaledAc = Accountant(7, 7000,
      name: "Khaled",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456795",
      address: "Cairo, Egypt",
      age: 31);
//Manager
  Manager MahmoudMG = Manager(8, 15000,
      name: "Mahmoud",
      hoursWork: 200,
      takeSalaryIsDone: false,
      phone: "0123456796",
      address: "Cairo, Egypt",
      age: 32);
//first project in company
  Project project1 = Project(
    title: "The new Flutter app",
    price: 100000,
    receivingDate: DateTime.now(),
    deadline: DateTime.now().add(Duration(days: 25)),
  );
  // Mark the UI as finished
  project1.uiFinished();
  // Mark the Flutter as finished
  project1.flutterFinished();
  // Mark the backend as finished
  project1.backendFinished();
  // Print the project information
  print(project1.toString());
  //team 7
  Team team7 = Team(
    teamName: 'The Development Team',
    teamLeader: flutterDeveloper2,
    flutterGroup: [flutterDeveloper1, flutterDeveloper3, flutterDeveloper4],
    backendGroup: [backendDeveloper1, backendDeveloper2, backendDeveloper3],
    allTeamDeveloper: [
      flutterDeveloper1,
      flutterDeveloper2,
      flutterDeveloper3,
      flutterDeveloper4,
      backendDeveloper1,
      backendDeveloper2,
      backendDeveloper3,
      uiUxDeveloper1,
      uiUxDeveloper2
    ],
    uiUxGroup: [uiUxDeveloper1, uiUxDeveloper2],
    projects: [],
  );
  team7.addProject(project1, 2, 24);
  team7.addEmployeeToTeam(flutterDeveloper5);
  team7.showNamesFlutterDevelopers();
  team7.removeEmployeeFromTeam(flutterDeveloper4);
  team7.showNamesFlutterDevelopers();
  Company RMX = Company(
    name: 'RMX',
    address: 'cairo',
    account: 50000,
    accountant: KhaledAc,
    listOfEmployee: [flutterDeveloper1],
    listOfTeams: [team7],
    manager: MahmoudMG,
    phone: '23456887865',
  );
  KhaledAc.SalaryForEmployee(6500, MahmoudMG, RMX, flutterDeveloper1, KhaledAc);
}
