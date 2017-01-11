//
//  SoftwareListCell.h
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVSoftware.h"
#import "EGOImageView.h"
@interface SoftwareListCell : UITableViewCell

@property (strong, nonatomic) SVSoftware* software;

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet EGOImageView *imageViewLogo;


@end
