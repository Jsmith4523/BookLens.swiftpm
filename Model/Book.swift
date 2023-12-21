//
//  File.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import Foundation
import SwiftUI

protocol BookPoto: AnyObject {
    
}

struct Book: Identifiable {
    
    init(title: String, type: BookType = .book, author: String? = nil, isbn: String? = nil, pages: [Page] = []) {
        self.title  = title
        self.type   = type
        self.author = author
        self.isbn   = isbn
        self.pages  = pages
    }
    
    var id = UUID()
    let title: String
    let type: BookType
    var author: String?
    var isbn: String?
    var pages: [Page]
}

enum BookType: String {
    
    case book     = "Book"
    case textbook = "Textbook"
    case magazine = "Magazine"
    case article  = "Article"
    case notes    = "Notes"
    
    var symbol: String {
        switch self {
        case .textbook:
            return "text.book.closed"
        case .magazine:
            return "doc.text.image"
        case .article:
            return "doc.plaintext"
        case .notes:
            return "note"
        case .book:
            return "book"
        }
    }
    
    var color: Color {
        switch self {
        case .book:
            return .orange
        case .textbook:
            return .indigo
        case .magazine:
            return .green
        case .article:
            return .teal
        case .notes:
            return .red
        }
    }
    
    var saturatedColor: Color {
        self.color.opacity(0.3)
    }
}
