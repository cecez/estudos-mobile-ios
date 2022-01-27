//
//  Helper.swift
//  001-alura-swift-4-2
//
//  Created by Cezar Castro Rosa on 27/01/22.
//

import Foundation

class Helper {
    
    public class func loadJson
    (
        fromURLString urlString: String,
        completion: @escaping (Result<Data, Error>) -> Void
    )
    {
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(.failure(error))
                }
                
                if let data = data {
                    completion(.success(data))
                }
            }
            
            urlSession.resume()
        }
    }
    
}
