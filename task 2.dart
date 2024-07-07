class Book {
  String? title;
  String? author;
  double? pages;

  Book({required this.title, required this.author,required this.pages});

  void displayBookInfo() {
    print("Book Title: $title\nAuthor: $author\nPages: $pages");
  }
}

class Novel extends Book {
  String? genre;

  Novel({required super.title,required super.author,required super.pages,required this.genre});

  @override
  void displayBookInfo() {
    super.displayBookInfo();
    print("Genre: $genre");
  }
}
void main(){
  Novel n1 = Novel(title:"Harry Potter",author: "J. K. Rowling",pages: .594,genre: "Fantasy fiction");
  n1.displayBookInfo();
}
