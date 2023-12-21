//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 12/11/23.
//

import SwiftUI

struct BookCmposeView: View {
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.oldBook.ignoresSafeArea()
            }
            .navigationTitle("New Book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Next") {
                        
                    }
                }
            }
        }
        .tint(.label)
    }
}

#Preview {
    BookCmposeView()
}
