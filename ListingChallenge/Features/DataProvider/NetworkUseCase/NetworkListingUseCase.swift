//
//  NetworkRecipeUseCase.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import Foundation

final class NetworkListingUseCase {
    // MARK:- Private Properties
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
}
//MARK:- RecipeUse case implementation
extension NetworkListingUseCase: ListingUseCase {
    
    func fetchListings(then completion: @escaping Completion) {
        networkService.fetch(APIURLs.listingUrl) { (response:Result<ListingResponseModel,Error>) in
            switch response {
            case .success(let responseModel):
                completion(.success(responseModel.results))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
