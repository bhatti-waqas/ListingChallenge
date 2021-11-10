//
//  ListingUseCase.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import Foundation

protocol ListingUseCase {
    typealias Completion = (Result<[Listing], Error>) -> Void
    
    /// it will fetch Listings.
    /// - Parameter completion: block triggered when fetching is completed.
    func fetchListings(then completion: @escaping Completion)
}
