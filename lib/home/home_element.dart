enum HomeElement {
  aboutUs,
  history,
  news,
  candidateStudents,
  education,
  careerCenter,
  library,
  museums,
  bases,
  fss,
  baseReservation,
  faq,
  social,
}

extension HomeElementExtension on HomeElement {
  String get title {
    switch (this) {
      case HomeElement.aboutUs:
        return "За нас";
      case HomeElement.history:
        return "История";
      case HomeElement.news:
        return "Новини";
      case HomeElement.candidateStudents:
        return "Кандидат-студенти";
      case HomeElement.education:
        return "Образование";
      case HomeElement.careerCenter:
        return "Кариерен център";
      case HomeElement.library:
        return "Библиотека";
      case HomeElement.museums:
        return "Музеи";
      case HomeElement.bases:
        return "Бази";
      case HomeElement.fss:
        return "ФСС";
      case HomeElement.baseReservation:
        return "Резервиране на зала";
      case HomeElement.faq:
        return "FAQ";
      case HomeElement.social:
        return "Social media";
    }
  }

  String get imagePath {
    switch (this) {
      case HomeElement.aboutUs:
        return "assets/images/history.svg";
      case HomeElement.history:
        return "assets/images/history.svg";
      case HomeElement.news:
        return "assets/images/history.svg";
      case HomeElement.candidateStudents:
        return "assets/images/history.svg";
      case HomeElement.education:
        return "assets/images/history.svg";
      case HomeElement.careerCenter:
        return "assets/images/history.svg";
      case HomeElement.library:
        return "assets/images/history.svg";
      case HomeElement.museums:
        return "assets/images/history.svg";
      case HomeElement.bases:
        return "assets/images/history.svg";
      case HomeElement.fss:
        return "assets/images/history.svg";
      case HomeElement.baseReservation:
        return "assets/images/history.svg";
      case HomeElement.faq:
        return "assets/images/history.svg";
      case HomeElement.social:
        return "assets/images/history.svg";
    }
  }
}