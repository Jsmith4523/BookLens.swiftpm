//
//  SwiftUIView.swift
//  
//
//  Created by Jaylen Smith on 11/15/23.
//

import SwiftUI

struct BookEmptyPagesView: View {
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: "plus")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            Text("Press the 'plus' button to get started adding a page")
                .font(.system(size: 16))
        }
        .multilineTextAlignment(.center)
        .foregroundStyle(.gray)
        .padding()
    }
}

#Preview {
    BookEmptyPagesView()
}
