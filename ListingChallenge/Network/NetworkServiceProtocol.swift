//
//  NetworkServiceProtocol.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import Foundation

typealias ResultHandler<T> = (Result<T, Error>) -> Void

protocol NetworkServiceProtocol: AnyObject {
    func fetch<T:Decodable>(_ url: String, completion: @escaping ResultHandler<T>)
}
