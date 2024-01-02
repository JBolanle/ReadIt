//
//  NetworkManager.swift
//  ReadIt
//
//  Created by Jumoke Bolanle on 1/1/24.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()

    static let baseURL = "https://www.googleapis.com/books/v1/"
    static private let apiKEY = "AIzaSyB1XlVhCzFX34tl4XAcQFR3Xow2j5PUz3A"

    private let bookSearchURL = baseURL + "volumes?q="
    private let bookDetailURL = baseURL + "volumes/"

    private init() {}

    func searchBooks(completed: @escaping (Result<[Book], Errors>) -> Void) {
        guard let url = URL(string: bookSearchURL) else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(BookResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }

    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: urlString)

        if let image = cache.object(forKey: cacheKey) {
            completed(image)
            return
        }

        guard let url = URL(string:urlString) else {
            completed(nil)
            return
        }

        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data, let image = UIImage(data: data) else {
                completed(nil)
                return
            }

            self.cache.setObject(image, forKey: cacheKey)
            completed(image)
        }

        task.resume()
    }
}
