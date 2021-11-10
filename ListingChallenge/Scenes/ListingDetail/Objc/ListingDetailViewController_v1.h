//
//  ListingDetailViewController_v1.h
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/10/21.
//

#import <UIKit/UIKit.h>
//#import "ListingChallenge-Swift.h"
@class ListingRowViewModel;
NS_ASSUME_NONNULL_BEGIN

@interface ListingDetailViewController_v1 : UIViewController
-(instancetype)initWithCoder:(NSCoder *)coder viewModel:(ListingRowViewModel *)viewModel;
@end

NS_ASSUME_NONNULL_END
