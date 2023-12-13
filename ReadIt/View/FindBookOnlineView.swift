//
//  AddBookOnlineView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct FindBookOnlineView: View {
    @State private var searchText = "Search by title, author, or ISBN."

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    NavigationLink {
                        BookDetailView(book: Book.sampleBook)
                    } label: {
                        BookDetailCell(book: Book.sampleBook)
                            .foregroundStyle(Color.primary)
                    }
                }
                Spacer()
            }
            .navigationTitle("Find a book")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    FindBookOnlineView()
}
