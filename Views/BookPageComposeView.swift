//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import SwiftUI

struct BookPageComposeView: View {
    
    @State private var pageNumber = 1
    @State private var pageTitle = "The Buford Series: An Urban Tale"
    
    @Binding var book: Book
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Spacer()
                        .frame(height: 65)
                    VStack(spacing: 75) {
                        VStack(spacing: 20) {
                            Image(systemName: "doc.plaintext")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(book.type.color)
                            Text(pageTitle.isEmpty ? "Page \(pageNumber)" : "\"\(pageTitle)\"")
                                .font(.system(size: 25).weight(.heavy))
                                .italic()
                                .multilineTextAlignment(.center)
                        }
                        VStack(alignment: .center) {
                            TextField("Page Number", value: $pageNumber, format: .number)
                                .inputTextFieldStyle()
                            TextField("d", text: $pageTitle)
                                .inputTextFieldStyle()
                        }
                        Button {
                            
                        } label: {
                            Text("Save Page")
                                .padding()
                                .font(.system(size: 19).bold())
                                .frame(width: UIScreen.main.bounds.width-50)
                                .background(book.type.color)
                                .clipShape(RoundedRectangle(cornerRadius: 18))
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Add Page")
            .navigationBarTitleDisplayMode(.inline)
            .tint(book.type.color)
        }
    }
}

#Preview {
    BookPageComposeView(book: .constant(.init(title: "", type: .notes)))
}
