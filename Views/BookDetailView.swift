//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @State private var isShowingNewPageView = false
    
    @Binding var book: Book
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack(spacing: 35) {
                        VStack(spacing: 10) {
                            Image(systemName: book.type.symbol)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 45)
                                .padding()
                                .background(book.type.saturatedColor)
                                .foregroundStyle(book.type.color)
                                .clipShape(Circle())
                            Text(book.title)
                                .font(.system(size: 23).weight(.heavy))
                            if let author = book.author {
                                Text(author)
                                    .font(.system(size: 17))
                                    .foregroundStyle(.gray)
                            }
                        }
                        .multilineTextAlignment(.center)
                        Divider()
                            .padding()
                        VStack {
                            switch book.pages.isEmpty {
                            case true:
                                BookEmptyPagesView()
                            case false:
                                BookPagesListView(book: $book)
                            }
                        }
                    }
                }
                Button {
                    self.isShowingNewPageView.toggle()
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                        .padding(15)
                        .background(book.type.color)
                        .clipShape(RoundedRectangle(cornerRadius: 21))
                        .padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button("Delete \(book.type.rawValue)") {
                            
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }
            .tint(book.type.color)
            .sheet(isPresented: $isShowingNewPageView) {
                BookPageComposeView(book: $book)
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    BookDetailView(book: .constant(.init(title: "The Buford Series: An Urban Edition Tale", type: .textbook, author: "Jesse Smollet", pages: [
        .init(number: 1, annotations: []),
        .init(number: 2, annotations: []),
        .init(title: "Chapter 8 Questions", number: 3, annotations: [])
    ])))
}
