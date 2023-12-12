//
//  Book.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/11/23.
//

import Foundation

struct Book: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let author: String
    let description: String
    let genre: [String] // may change to or add 'subjects'
    let publicationDate: String // should it be int? for date()?
    let pageCount: Int
    let ISBN: String
    let publisher: String
    let language: String
    static let sampleBook = Book(title: "I Am Net Worthy - The Financial Master Plan For Millennials", author: "Chris Smith", description: "From student loans to savings accounts, cars to credit scores, I Am Net Worthy covers all the essential aspects of personal finance for today’s young adults. Financial expert Chris Smith teams up with a different Millennial co-author in each chapter, resulting in a uniquely authentic, swift, engaging read. I Am Net Worthy proves that financial independence is truly possible for young adults everywhere, through a practical, step-by-step approach that anyone can follow. The book is structured around 83 “Net Worthy Nuggets,” which are short, essential pieces of financial wisdom. Each nugget is simple to understand by itself, but the real power of I Am Net Worthy is how the nuggets work together to form a comprehensive, practical and powerful plan which will propel you towards financial independence safely, wisely, and successful.", genre: ["Personal Finance", "Nonfiction"], publicationDate: "August 28, 2018", pageCount: 293, ISBN: "1732023700", publisher: "Awesome Financial Future, LLC (January 1, 2018)", language: "English")
}
