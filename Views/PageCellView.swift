//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import SwiftUI

struct PageCellView: View {
    
    let color: Color
    let page: Page
    
    var body: some View {
        HStack {
            ZStack(alignment: .bottomTrailing) {
                Text("\(page.number)")
                    .font(.system(size: 25).weight(.heavy))
                    .foregroundStyle(color)
                    .padding(.trailing, 10)
            }
            VStack(alignment: .leading) {
                Text(page.displayTitle)
                    .font(.system(size: 16).weight(.heavy))
                Text(page.numberOfAnnotations)
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
            Spacer()
            Menu {
                
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundStyle(color)
            }
        }
        .padding()
    }
}

#Preview {
    PageCellView(color: BookType.article.color, page: .init(number: 700, annotations: [.init(quote: "", notes: "")]))
}
