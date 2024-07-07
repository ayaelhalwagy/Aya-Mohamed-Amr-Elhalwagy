class Book {
  String? title;
  String? author;
  double? pages;

  Book({required this.title, required this.author,required this.pages});

  void displayBookInfo() {
    print("Book Title: $title\nAuthor: $author\nPages: $pages");
  }
}

void main(){
  Book b1 = Book(title:"Harry Potter",author:"J. K. Rowling",pages:4.594);
  b1.displayBookInfo();
}
