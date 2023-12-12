//
//  BookDetailView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct BookDetailView: View {
    @Environment(\.colorScheme) var colorScheme
    let book: Book

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack(alignment: .top) {
                        if colorScheme == .dark {
                            Image(.iamnwcover) // Cover Art - don't hardcode this
                                .resizable()
                                .aspectRatio(2/3, contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 7.0))
                                .shadow(color: .secondary, radius: 5)
                        } else {
                            Image(.iamnwcover) // Cover Art - don't hardcode this
                                .resizable()
                                .aspectRatio(2/3, contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 7.0))
                                .shadow(radius: 5)
                        }


                        VStack(alignment: .leading) {
                            Text(book.title) // Title
                                .font(.title3)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .allowsTightening(true)
                                .padding(.bottom, 1)
                            Text("by \(book.author)") // Author
                                .font(.subheadline)

                            Divider()

                            // At a glance detail
                            // TODO: these appear unaligned. consider using a grid item for this section instead
                            VStack(alignment: .leading, spacing: 5) {
                                HStack(alignment: .center, spacing: 0) {
                                    Label("", systemImage: "book.pages")
                                    Text("\(book.pageCount) pages")
                                }
                                HStack(alignment: .center, spacing: 0) {
                                    Label("", systemImage: "globe.americas.fill")
                                    Text(book.language)
                                }
                                HStack(alignment: .top, spacing: 0) {
                                    Label("", systemImage: "tray.full")
                                    VStack(alignment: .listRowSeparatorLeading) {
                                        ForEach(book.genre, id: \.self) { genre in
                                            Text(genre)
                                        }
                                    }
                                }
                                HStack(alignment: .center, spacing: 0) {
                                    Label("", systemImage: "barcode.viewfinder")
                                    Text(book.ISBN)
                                }
                            } // At a glance details VStack
                            .font(.subheadline)
                            .padding(.top, 5)
                        }
                    }
                    .padding()
                    VStack(alignment: .leading) {
                        Text("Description:")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text(book.description)
                    }
                    .padding()
                } // End ScrollView
                .navigationTitle(book.title)
                .toolbar(.hidden)

            } // End NavigationStack
        }
    }
}

#Preview {
    BookDetailView(book: Book.sampleBook)
}
