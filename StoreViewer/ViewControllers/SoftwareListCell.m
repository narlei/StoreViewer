//
//  SoftwareListCell.m
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "SoftwareListCell.h"

@implementation SoftwareListCell

#pragma mark - Cell Methods

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Setters

- (void)setSoftware:(SVSoftware *)software {
    _software = software;
    self.labelPrice.text = software.formattedPrice;
    self.labelTitle.text = software.trackName;

    
    self.imageViewLogo.imageURL = [NSURL URLWithString:software.artworkUrl100];
    
    // Radius
    self.imageViewLogo.layer.cornerRadius = 10;
    self.imageViewLogo.clipsToBounds = YES;
    self.imageViewLogo.layer.masksToBounds = YES;
    // Border
    self.imageViewLogo.layer.borderColor = [UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1].CGColor;
    self.imageViewLogo.layer.borderWidth = 1.0;
}

@end
