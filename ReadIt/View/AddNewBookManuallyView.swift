//
//  AddNewBookView.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/12/23.
//

import SwiftUI

struct AddNewBookManuallyView: View {
    @Environment(\.dismiss) var dismiss
    @State private var newBook = Book.sampleBook // for testing.


    var body: some View {
        VStack {
            Form{
                Section("Title") {
                    TextField("Title", text: $newBook.title)
                    TextField("Subtitle", text: $newBook.title)
                }
                Section("Author") {
                    TextField(" ", text: $newBook.author)
                }
            }
        }
    }
}

#Preview {
    AddNewBookManuallyView()
}
