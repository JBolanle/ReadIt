//
//  BookDetailCell.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct BookDetailCell: View {
    let book: Book

    var body: some View {
        HStack {
            Image(.iamnwcover)
                .resizable()
                .frame(width: 60, height: 90)
                .aspectRatio(2/3, contentMode: .fit)
            VStack(alignment: .leading, spacing: 5) {
                Text(book.title)
                    .font(.headline)
                Text("by \(book.author)")
                    .font(.subheadline)
            }
        }
        .fontDesign(.rounded)
    }
}

#Preview {
    BookDetailCell(book: Book.sampleBook)
}
