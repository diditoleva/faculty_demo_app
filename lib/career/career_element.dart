enum CareerElement { info, news, internship, expired, contacts, useful }

extension CareerElementExtension on CareerElement {
  String get title {
    switch (this) {
      case CareerElement.info:
        return "Информация";
      case CareerElement.news:
        return "Новини и Събития";
      case CareerElement.internship:
        return "Обяви за Работа, Стажове и Стипендии";
      case CareerElement.expired:
        return "Изтекли обяви за Работа, Стажове и Стипендии";
      case CareerElement.useful:
        return "Полезни връзки";
      case CareerElement.contacts:
        return "Контакти";
    }
  }
}
