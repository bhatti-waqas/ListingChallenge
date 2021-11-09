//
//  ListingRowViewModel.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import Foundation

public class ListingRowViewModel: NSObject {
    @objc let name: String
    @objc let price: String
    let createdAt: String
    @objc let imageUrl: String
    var imageId: String
    
    init(with name: String, price: String, createdAt: String, imageUrl: String, imageId: String) {
        self.name = name
        self.price = price
        self.createdAt = createdAt
        self.imageUrl = imageUrl
        self.imageId = imageId
    }
}
