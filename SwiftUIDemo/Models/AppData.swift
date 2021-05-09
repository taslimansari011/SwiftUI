//
//  AppData.swift
//  SwiftUIDemo
//
//  Created by macadmin on 08/05/21.
//

import Foundation

struct Book {
    let title: String
    let author: String
}

struct BookViewModel {
    let book: Book
    var desc: String {
        return "\(book.title) ...... by \(book.author)"
    }
}

class AppData: ObservableObject {
    @Published var title: String = "Default Title"
    @Published var bookViewModel = BookViewModel(book: Book(title: "Hacked SwiftUI", author: "Taslim"))
}
