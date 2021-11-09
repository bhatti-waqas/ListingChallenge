//
//  RecipeViewControllerFactory.swift
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/9/21.
//

import Foundation
import UIKit

final class ListingViewControllersFactory {
    // MARK:- Private Properties
    private let listingUseCase: ListingUseCase
    
    // MARK:- Init
    init(listingUseCase: ListingUseCase) {
        self.listingUseCase = listingUseCase
    }
    
    // MARK:- Public Methods
    func makeListingViewController(navigator: ListingCoordinator) -> ListingViewController {
        let storyboard = UIStoryboard(name: .listing)
        let viewModel = ListingViewModel(with: listingUseCase, navigator: navigator)
        let viewController = storyboard.instantiateInitialViewController {
            ListingViewController(coder: $0, viewModel: viewModel)
        }
        guard let listViewController = viewController else {
            fatalError("Failed to load RecipeViewController from storyboard.")
        }
        return listViewController
    }
    
    // MARK:- Public Methods
    func makeListingDetailViewController(navigator: ListingCoordinator, viewModel: ListingRowViewModel) -> ListingDetailViewController_v1 {
        let storyboard = UIStoryboard(name: .listingDetail)
        let viewController = storyboard.instantiateInitialViewController {
            //ListingDetailViewController(coder: $0, viewModel: viewModel)
            let vc = ListingDetailViewController_v1(coder: $0)
            vc?.viewModel = viewModel
            return vc
        }
        guard let detailViewController = viewController else {
            fatalError("Failed to load RecipeViewController from storyboard.")
        }
        return detailViewController as! ListingDetailViewController_v1
    }
}
