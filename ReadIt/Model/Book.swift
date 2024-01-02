//
//  Book.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 12/11/23.
//

import Foundation

struct Book: Codable {
    let title: String
    let subtitle: String?
    let authors: [String]?
    let publisher: String?
    let publishedDate: String
    let description: String?
    let isbn: [ISBN]?
    let pageCount: Int
    let categories: [String]
//    let maturityRating: MaturityRating
    let allowAnonLogging: Bool
    let contentVersion: String
//    let panelizationSummary: PanelizationSummary?
//    let imageLinks: ImageLinks
    let language: String
    let previewLink: String
    let infoLink: String
    let canonicalVolumeLink: String
    let averageRating, ratingsCount: Int?

//    static let sampleBook = Book(title: "I Am Net Worthy - The Financial Master Plan For Millennials", subTitle: "blah", authors: ["Chris Smith"], description: "From student loans to savings accounts, cars to credit scores, I Am Net Worthy covers all the essential aspects of personal finance for today’s young adults. Financial expert Chris Smith teams up with a different Millennial co-author in each chapter, resulting in a uniquely authentic, swift, engaging read. I Am Net Worthy proves that financial independence is truly possible for young adults everywhere, through a practical, step-by-step approach that anyone can follow. The book is structured around 83 “Net Worthy Nuggets,” which are short, essential pieces of financial wisdom. Each nugget is simple to understand by itself, but the real power of I Am Net Worthy is how the nuggets work together to form a comprehensive, practical and powerful plan which will propel you towards financial independence safely, wisely, and successful.", genre: ["Personal Finance", "Nonfiction"], publishedDate: 2018, pageCount: 293, ISBN: "1732023700", publisher: "Awesome Financial Future, LLC (January 1, 2018)", language: "English")
}

// MARK: - ISBN
struct ISBN: Codable {
    let type: TypeEnum
    let identifier: String
}

enum TypeEnum: String, Codable {
    case isbn10 = "ISBN_10"
    case isbn13 = "ISBN_13"
    case other = "OTHER"
}

// MARK: - NETWORKING
struct BookResponse: Decodable {
    let request: [Book]
}
