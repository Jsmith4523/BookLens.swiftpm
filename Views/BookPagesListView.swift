//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import SwiftUI

struct BookPagesListView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack {
            ForEach(book.pages.sorted(by: <)) { page in
                PageCellView(color: book.type.color, page: page)
                Divider()
            }
        }
    }
}

#Preview {
    BookPagesListView(book: .constant(.init(title: "", pages: [
        .init(number: 1, annotations: []),
        .init(number: 2, annotations: []),
        .init(title: "Chemistry and it's Final Form", number: 3, annotations: [])
    ])))
}
