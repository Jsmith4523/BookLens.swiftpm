//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 12/1/23.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.oldBook.ignoresSafeArea()
                detail
            }
            .hideNavigationTitle(book.title)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button {
                            
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                        NavigationLink {
                            
                        } label: {
                            Label("More Info", systemImage: "info.circle")
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
        }
        .tint(.label)
    }
    
    var detail: some View {
        ScrollView {
            VStack {
                Spacer()
                    .frame(height: 35)
                VStack(spacing: 20) {
                    VStack {
                        Image(systemName: book.type.symbol)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                        VStack(spacing: 7) {
                            Text(book.title)
                                .font(.system(size: 28).weight(.heavy))
                            Text(book.type.rawValue)
                                .font(.system(size: 17))
                            if let author = book.author {
                                Text(author)
                                    .font(.system(size: 17))
                            }
                        }
                    }
                    VStack {
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    BookDetailView(book: .init(title: "The Fault In Our Stars"))
}
