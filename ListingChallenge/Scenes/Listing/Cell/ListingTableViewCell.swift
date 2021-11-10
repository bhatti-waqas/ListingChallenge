//
//  Listingcell.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import UIKit

final class ListingTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    
    func configure(with viewModel: ListingRowViewModel) {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
    }
}
