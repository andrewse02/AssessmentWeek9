//
//  Book.swift
//  assessment-bookshelf
//
//  Created by Andrew Elliott on 3/18/22.
//

import Foundation

class Book {
    let title: String
    let author: String
    let cover: String
    let release: Date
    let description: String
    
    init(title: String, author: String, cover: String, release: Date, description: String) {
        self.title = title
        self.author = author
        self.cover = cover
        self.release = release
        self.description = description
    }
}
