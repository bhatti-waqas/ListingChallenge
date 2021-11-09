//
//  ListingDetailViewController.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/10/21.
//

import UIKit

final class ListingDetailViewController: UIViewController {
    
    // MARK:- Private Properties
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var listingImageView: UIImageView!
    private let viewModel: ListingRowViewModel
    
    // MARK:- Init
    init?(coder: NSCoder, viewModel: ListingRowViewModel) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        guard let url = URL(string: viewModel.imageUrl) else { return }
        listingImageView.setImage(with: url)
    }
    
}
