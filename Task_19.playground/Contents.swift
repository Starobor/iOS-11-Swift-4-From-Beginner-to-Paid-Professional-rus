import UIKit

class Product {
    var name: String
    var author: String
    var genre: String
    
    init(name: String, author: String, genre: String) {
        self.name = name
        self.author = author
        self.genre = genre
    }
}

class Library {
    var films = [Product]()
    var books = [Product]()
    
    func addBook(book: Product) {
        books.append(book)
        sorted(productsArr: books)
    }
    
    func addFilm(film: Product) {
        films.append(film)
        sorted(productsArr: films)
    }
    
    func sorted(productsArr: [Product]) -> [Product]{
        let sortedProducts = productsArr.sorted { (product1, product2) -> Bool in
            return product1.name < product2.name
        }
        return sortedProducts
    }
    
    func sortByMood(mood: String, productsArr: [Product]) -> [Product]? {
        switch mood {
        case "happy":
            let sortedProducts = productsArr.sorted { (product1, product2) -> Bool in
                return product1.genre == "comedy"
            }
            return sortedProducts
        case "sad":
            let sortedProducts = productsArr.sorted { (product1, product2) -> Bool in
                return product1.genre == "drama"
            }
            return sortedProducts
        case "neutral":
            let sortedProducts = productsArr.sorted { (product1, product2) -> Bool in
                return product1.genre == "fantastic"
            }
            return sortedProducts
        case "fear":
            let sortedProducts = productsArr.sorted { (product1, product2) -> Bool in
                return product1.genre == "horror"
            }
            return sortedProducts
        default:
            "Bad request"
        }
        return nil
    }
}


var library = Library()

library.addBook(book: Product(name: "The Adventures of Sherlock Holmes", author: "Arthur Conan Doyle", genre: "detective"))
library.addBook(book: Product(name: "Fifty Shades of Grey", author: "E. L. James", genre: "erotic"))
library.addBook(book: Product(name: "It", author: "Stephen King", genre: "horror"))
library.addBook(book: Product(name: "The Interpretation of Dreams", author: "Sigmund Freud", genre: "psychology"))
library.addBook(book: Product(name: "MyBook", author: "I", genre: "horror"))
library.addFilm(film: Product(name: "Titanic", author: "James Cameron", genre: "drama"))
library.addFilm(film: Product(name: "Paranormal", author: "Oren Peli", genre: "horror"))
library.addFilm(film: Product(name: "Deadpool", author: "Tim Miller", genre: "comedy"))
library.addFilm(film: Product(name: "The Hobbit", author: "Peter Jackson", genre: "fantastic"))

for product in library.sortByMood(mood: "fear", productsArr: library.films)! {
    print(product.genre)
}
