class Book {
    let title: String
    let author: String
    let year: Int

    init(title: String, author: String, year: Int) {
        self.title = title
        self.author = author
        self.year = year
    }

    func description() -> String {
        return "\(title) by \(author) (\(year))"
    }
}
class Library {
    private var books: [Book] = []

    func addBook(_ book: Book) {
        books.append(book)
    }

    func listBooks() {
        if books.isEmpty {
            print("The library is empty.")
        } else {
            for book in books {
                print(book.description())
            }
        }
    }

    func findBook(byTitle title: String) -> Book? {
        return books.first { $0.title.lowercased() == title.lowercased() }
    }
}
let myLibrary = Library()

let book1 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960)
let book2 = Book(title: "1984", author: "George Orwell", year: 1949)
let book3 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925)

myLibrary.addBook(book1)
myLibrary.addBook(book2)
myLibrary.addBook(book3)

print("Books in the library:")
myLibrary.listBooks()

if let foundBook = myLibrary.findBook(byTitle: "1984") {
    print("\nFound book:")
    print(foundBook.description())
} else {
    print("\nBook not found.")
}
