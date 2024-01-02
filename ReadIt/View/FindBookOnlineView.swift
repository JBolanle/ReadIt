//
//  AddBookOnlineView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct FindBookOnlineView: View {
    @State private var searchText = ""
    @State private var searchPrompt = "Search by title, author, or ISBN."

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    NavigationLink {
                        BookDetailView(book: Book.sampleBook)
                    } label: {
                        BookDetailCell(book: Book.sampleBook)
                            .foregroundStyle(Color.primary)
                            .contextMenu(ContextMenu(menuItems: {
                                Button("Add to Library", systemImage: "plus") {

                                }
                            }))
                    }
                }
                Spacer()
            }
            .navigationTitle("Find a book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Menu("", systemImage: "plus.square") {
                    Button("Add Manually", systemImage: "pencil") {

                    }
                    Button("Scan Barcode", systemImage: "barcode.viewfinder") {

                    }
                }
            }
        }
        .searchable(text: $searchText, prompt: searchPrompt)
    }
}

#Preview {
    FindBookOnlineView()
}
