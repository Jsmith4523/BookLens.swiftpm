//
//  File.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import Foundation

struct Page: Comparable, Identifiable {
    
    var id = UUID()
    var title: String? = nil
    let number: Int
    var annotations: [Annotation]
    
    static func < (lhs: Page, rhs: Page) -> Bool {
        return lhs.number < rhs.number
    }
    
    static func > (lhs: Page, rhs: Page) -> Bool {
        return lhs.number > rhs.number
    }
    
    static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.number == rhs.number
    }
}


struct Annotation {
    let quote: String
    let notes: String
    var isFavorite: Bool = false
}

extension Page {
    
    var displayTitle: String {
        if let title {
            return "\"\(title)\""
        } else {
            return "Page \(self.number)"
        }
    }
    
    var numberOfAnnotations: String {
        if annotations.isEmpty {
            return "No Annotations"
        } else {
            return "\(annotations.count) \(annotations.count > 1 ? "Annotations" : "Annotation")"
        }
    }
}
