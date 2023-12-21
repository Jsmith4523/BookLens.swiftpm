//
//  File.swift
//  
//
//  Created by Jaylen Smith on 12/20/23.
//

import Foundation
import SwiftData

@available(iOS 17, *)
@Model
class BookModel: Identifiable {
    
    var id: String
    var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}
