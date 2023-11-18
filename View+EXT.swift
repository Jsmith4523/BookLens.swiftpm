//
//  View+EXT.swift
//  BookLens
//
//  Created by Jaylen Smith on 11/15/23.
//

import Foundation
import SwiftUI

extension TextField {
    
    
    func inputTextFieldStyle() -> some View {
        return self
            .padding()
            .background(Color.gray.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
