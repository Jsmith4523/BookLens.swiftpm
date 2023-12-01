import SwiftUI

struct MyBooksView: View {
    
    enum SheetMode: Identifiable {
        case compose, filter, settings
        
        var id: Self { return self }
    }
    
    //MARK: Sheets
    @State private var sheetMode: SheetMode?
    @State private var book: Book?
    
    //MARK: Filters
    @State private var bookQuery = ""
    @State private var bookType: BookType?
        
    var body: some View {
        NavigationStack {
            ZStack {
                Color.oldBook.ignoresSafeArea()
                ZStack {
                    ScrollView {
                        VStack {
                            
                        }
                    }
                    composeButton()
                }
                .searchable(text: $bookQuery)
            }
            .navigationTitle("My Books")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "text.viewfinder")
                    }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        self.sheetMode = .filter
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    Button {
                        self.sheetMode = .settings
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }
            .sheet(item: $sheetMode) { mode in
                switch mode {
                case .compose:
                    EmptyView()
                case .filter:
                    EmptyView()
                case .settings:
                    EmptyView()
                }
            }
        }
        .tint(.label)
    }
    
    @ViewBuilder
    func composeButton() -> some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button {
                    self.sheetMode = .compose
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .bold()
                        .padding()
                        .background(Color.label)
                        .clipShape(Circle())
                        .padding()
                        .foregroundStyle(Color.systemBackground)
                }
            }
        }
    }
}

#Preview {
    MyBooksView()
}
