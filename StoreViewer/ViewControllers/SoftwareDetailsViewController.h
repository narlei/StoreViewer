//
//  SoftwareDetailsViewController.h
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "SVBaseViewController.h"
#import "SVSoftware.h"
#import "EGOImageView.h"

@interface SoftwareDetailsViewController : SVBaseViewController

#pragma mark - Properties

@property (strong, nonatomic) SVSoftware* software;

#pragma mark Outlets

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet UILabel *labelDescription;
@property (weak, nonatomic) IBOutlet EGOImageView *imageViewLogo;

@end
