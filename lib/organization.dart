abstract class person {
  String? name;
  String? phone;
  String? address;
  int? age;
  int? _id;
  int? _salary;
  String get getId => 'The ID : ${this._id}';
  int? get getSalary => this._salary;
}

class Employee implements person {
  //ملزم تاخد كل حاجة من كلاس البرسون
  int? _id;
  int? _salary;
  String? address;
  int? age;
  String? name;
  String? phone;
  bool takeSalaryIsDone;
  int hoursWork;
  String get getId => 'The ID : ${this._id}';
  int? get getSalary => this._salary;
  Employee(this._id, this._salary,
      {required this.name,
      required this.hoursWork,
      required this.takeSalaryIsDone,
      required this.phone,
      required this.address,
      required this.age}) {}
  void SalaryForEmployee(int salary, Manager manager, Company Company,
      Employee employee, Accountant accountant) {
    if (Company.manager == manager &&
        Company.listOfEmployee!.contains(employee)) {
      this._salary = salary;
      print('Salary has been updated successfully');
    } else if (Company.accountant == accountant &&
        Company.listOfEmployee!.contains(employee)) {
      this._salary = salary;
      print('Salary has been updated successfully');
    } else {
      print("You cannot access an employee salary ");
    }
  }
}

class Manager extends Employee {
  Manager(super.id, super.salary,
      {required super.name,
      required super.hoursWork,
      required super.takeSalaryIsDone,
      required super.phone,
      required super.address,
      required super.age});
}

class FlutterDeveloper extends Employee {
  bool canUseCleanArc;
  bool canUseFirebase;
  bool canUseBloc;
  FlutterDeveloper(
    super.id,
    super.salary, {
    required super.name,
    required super.hoursWork,
    required super.takeSalaryIsDone,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseBloc,
    required this.canUseCleanArc,
    required this.canUseFirebase,
  });
  String toString() =>
      "The ID is : $_id, Name : $name , Salary : $_salary , Is Salary is take : $takeSalaryIsDone, Age : $age , Address :$address , HoursWork :$hoursWork,you can use cleanArc : $canUseCleanArc , you can use firebase :$canUseFirebase,you can use bloc :$canUseBloc ";
}

class BackendDeveloper extends Employee {
  bool canUseLaravel;
  bool canUseDjango;
  bool canUseExpressJs;
  BackendDeveloper(
    super.id,
    super.salary, {
    required super.name,
    required super.hoursWork,
    required super.takeSalaryIsDone,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseDjango,
    required this.canUseExpressJs,
    required this.canUseLaravel,
  });
  String toString() =>
      "The ID is : $_id, Name : $name , Salary : $_salary , Is Salary is take : $takeSalaryIsDone, Age : $age , Address :$address , HoursWork :$hoursWork,you can use Django : $canUseDjango, you can use expressJs :$canUseExpressJs,you can use laravel :$canUseLaravel ";
}

class UiUxDeveloper extends Employee {
  bool canUseFigma;
  bool canUseAdobeXd;

  UiUxDeveloper(
    super.id,
    super.salary, {
    required super.name,
    required super.hoursWork,
    required super.takeSalaryIsDone,
    required super.phone,
    required super.address,
    required super.age,
    required this.canUseAdobeXd,
    required this.canUseFigma,
  });
  String toString() =>
      "The ID is : $_id, Name : $name , Salary : $_salary , Is Salary is take : $takeSalaryIsDone, Age : $age , Address :$address , HoursWork :$hoursWork,you can use figma : $canUseFigma, you can use adobeXd :$canUseAdobeXd ";
}

class Project {
  String title;
  int price;
  DateTime receivingDate;
  DateTime deadline;
  bool _isUiDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;
  bool _isProjectDone = false;
  Project({
    required this.title,
    required this.price,
    required this.receivingDate,
    required this.deadline,
  }) {}
  bool get getUiDone => this._isUiDone;
  bool get FlutterDone => this._isFlutterDone;
  bool get BackendDone => this._isBackendDone;
  bool get ProjectDone => this._isProjectDone;
  void uiFinished() {
    _isUiDone = true;
    if (_isBackendDone == true && _isFlutterDone == true) {
      _isProjectDone = true;
      print('The Project is done');
    } else {
      print('The Project not done yet');
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;
    if (_isBackendDone == true && _isUiDone == true) {
      _isProjectDone = true;
      print('The Project is done');
    } else {
      print('The Project not done yet');
    }
  }

  void backendFinished() {
    _isBackendDone = true;
    if (_isUiDone == true && _isFlutterDone == true) {
      _isProjectDone = true;
      print('The Project is done');
    } else {
      print('The Project not done yet');
    }
  }

  @override
  String toString() => """project title : $title
 Project Price : $price 
 Project Start : $receivingDate 
 Project End : $deadline 
 Project Is Done : $ProjectDone""";
}

class Team {
  String teamName;
  Employee teamLeader;
  List<FlutterDeveloper> flutterGroup;
  List<BackendDeveloper> backendGroup;
  List<UiUxDeveloper> uiUxGroup;
  List<Employee> allTeamDeveloper;
  List<Project> projects;
  Team({
    required this.teamName,
    required this.teamLeader,
    required this.flutterGroup,
    required this.backendGroup,
    required this.allTeamDeveloper,
    required this.uiUxGroup,
    required this.projects,
  }) {}
  void showNamesFlutterDevelopers() {
    if (flutterGroup.isEmpty) {
      print('there is no flutter developers');
    } else {
      print('Flutter developers');
      for (var developrs in flutterGroup) {
        print(' Dev : ${developrs.name}');
      }
    }
  }

  void showNamesBackendDevelopers() {
    if (backendGroup.isEmpty) {
      print('there is no backend developers');
    } else {
      print('Backend developers');
      for (var developrs in backendGroup) {
        print(' Dev : ${developrs.name}');
      }
    }
  }

  void showNamesUiUxDevelopers() {
    if (uiUxGroup.isEmpty) {
      print(' Ui/Ux developers');
      print('there is no ui/ux developers');
    } else {
      for (var developrs in uiUxGroup) {
        print(' Dev : ${developrs.name}');
      }
    }
  }

  void showNameAllDevelopers() {
    for (var i = 0; i < allTeamDeveloper.length; i++) {
      print('Devlopers ${i + 1} : ${allTeamDeveloper} ');
    }
  }

  void addEmployeeToTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.length <= 8) {
        flutterGroup.add(employee);
        allTeamDeveloper.add(employee);
        print(
            'The employee ${employee.name} has been successfully added to the Flutter team');
      } else {
        print('the team flutter is full');
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroup.length <= 5) {
        backendGroup.add(employee);
        allTeamDeveloper.add(employee);
        print(
            'The employee ${employee.name} has been successfully added to the Backend team');
      } else {
        print('the team Backend is full');
      }
    } else if (employee is UiUxDeveloper) {
      if (uiUxGroup.length < 2) {
        uiUxGroup.add(employee);
        allTeamDeveloper.add(employee);
        print(
            'The employee ${employee.name} has been successfully added to the UI/UX team');
      } else {
        print('the team UI/UX is full');
      }
    } else {
      print(
          'cant add this employee , the team want just flutter or backend or ui/ui developer');
    }
  }

  void removeEmployeeFromTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.isEmpty) {
        print('Flutter group is empty');
      } else {
        if (flutterGroup.contains(employee)) {
          flutterGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('Removed ${employee.name} from Flutter group');
        } else {
          print('Employee ${employee.name} does not exist in the group');
        }
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroup.isEmpty) {
        print('Backend group is empty');
      } else {
        if (backendGroup.contains(employee)) {
          backendGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('Removed ${employee.name} from Backend group');
        } else {
          print('Employee ${employee.name} does not exist in the group');
        }
      }
    } else if (employee is UiUxDeveloper) {
      if (uiUxGroup.isEmpty) {
        print(' UI/UX group is empty');
      } else {
        if (uiUxGroup.contains(employee)) {
          uiUxGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('Removed ${employee.name} from UI/UX group');
        } else {
          print('Employee ${employee.name} does not exist in the group');
        }
      }
    } else {
      print(
          'This employee cannot be removed. The team only has a Flutter and Backend Developer and a UI/UX Developer');
    }
  }

  void addProject(Project project, int teamLeaderID, int deadline) {
    if (teamLeader._id == teamLeaderID) {
      if (flutterGroup.length >= 2 &&
          backendGroup.length >= 2 &&
          uiUxGroup.length >= 1) {
        if (deadline <= 30) {
          projects.add(project);
          print('the new project added');
        } else {
          print('The team cant finish any project before 30 days');
        }
      } else {
        print(
            'this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer,and at least 2 backend developer');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void getAllProjects() {
    if (projects.isEmpty) {
      print('the team doesnt have any project');
    } else {
      for (var i = 0; i < projects.length; i++) {
        print('project ${i + 1} : $projects');
      }
    }
  }

  void groupUiFinished(Project project, int teamLeaderID) {
    if (teamLeader._id == teamLeaderID) {
      if (projects.contains(project)) {
        project.uiFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void groupFlutterFinished(Project project, int teamLeaderID) {
    if (teamLeader._id == teamLeaderID) {
      if (projects.contains(project)) {
        project.flutterFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void groupBackendFinished(Project project, int teamLeaderID) {
    if (teamLeader._id == teamLeaderID) {
      if (projects.contains(project)) {
        project.backendFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }
}

class Accountant extends Employee {
  Accountant(
    super.id,
    super.salary, {
    required super.name,
    required super.hoursWork,
    required super.takeSalaryIsDone,
    required super.phone,
    required super.address,
    required super.age,
  });
  void calculateSalary(Employee employee, Company company) {
    // Check if the employee and the accountant are in the same team
    if (company.listOfTeams!.contains(employee)) {
      // Calculate the salary based on the number of hours worked
      int salary = employee._salary!;
      int hoursWorked = employee.hoursWork;
      int normalHours = 200;

      if (hoursWorked == normalHours) {
        print('No bonus');
      } else if (hoursWorked > normalHours) {
        // Bonus
        salary += (hoursWorked - normalHours) * 10;
      } else {
        // Deduction
        salary -= (normalHours - hoursWorked) * 10;
      }

      // Update the employee's salary
      employee._salary = salary;
    }
  }

  void sendSalary(Employee employee) {
    employee.takeSalaryIsDone = true;
  }

  void addBonusEmployee(int bonus, Employee employee, Company company) {
    // Calculate the new salary with the bonus
    int newSalary = employee.getSalary! + bonus;

    // Set the employee's salary to the new salary
    employee._salary = newSalary;
  }

  void minusFromEmployee(int minus, Employee employee, Company company) {
    int newSalary = employee.getSalary! - minus;
    employee._salary = newSalary;
  }
}

class Company {
  String name;
  String address;
  String phone;
  int account;
  Manager manager;
  Accountant accountant;
  List<Team>? listOfTeams = [];
  List<Employee>? listOfEmployee = [];
  Company({
    required this.name,
    required this.address,
    required this.account,
    required this.accountant,
    required this.listOfEmployee,
    required this.listOfTeams,
    required this.manager,
    required this.phone,
  }) {}
  bool isEmployeeExist(Employee employee) {
    return listOfEmployee!.contains(employee);
  }

  @override
  String toString() {
    return '''
    Name: ${name}
    Address: ${address}
    Phone: ${phone}
    Account: $account}
    Manager: ${manager.name}
    Accountant: ${accountant.name}
    List of Teams: ${listOfTeams}
    List of Employees: ${listOfEmployee}
  ''';
  }
}
