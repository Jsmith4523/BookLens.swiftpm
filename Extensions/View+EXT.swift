//
//  File.swift
//  
//
//  Created by Jaylen Smith on 12/1/23.
//

import Foundation
import SwiftUI

extension View {
    
    ///Hides the navigation title, but allows for the view title to be present when popping to back to root view
    func hideNavigationTitle(_ title: String) -> some View {
        return self
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(" ")
                }
            }
    }
}
