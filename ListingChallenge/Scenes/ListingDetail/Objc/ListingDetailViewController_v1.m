//
//  ListingDetailViewController_v1.m
//  ListingChallenge
//
//  Created by Waqas Naseem on 11/10/21.
//

#import "ListingDetailViewController_v1.h"
#import "ListingChallenge-Swift.h"

@interface ListingDetailViewController_v1 ()
@property(nonatomic,weak) IBOutlet UILabel *name;
@property(nonatomic,weak) IBOutlet UILabel *price;
@property(nonatomic,weak) IBOutlet UIImageView *imageView;
@end

@implementation ListingDetailViewController_v1

- (instancetype)initWithCoder:(NSCoder *)coder viewModel:(ListingRowViewModel *)viewModel {
    
    if(self = [super initWithCoder:coder]) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configure];
}

-(void)configure {
    self.name.text = self.viewModel.name;
    self.price.text = self.viewModel.price;
    [self.imageView setImageWith:[NSURL URLWithString:self.viewModel.imageUrl]];
}

@end
