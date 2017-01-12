//
//  SoftwareDetailsViewController.m
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "SoftwareDetailsViewController.h"

@interface SoftwareDetailsViewController ()

@end

@implementation SoftwareDetailsViewController

#pragma mark - ViewCOntroller Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Data

- (void)loadData {
    self.labelPrice.text = self.software.formattedPrice;
    self.labelTitle.text = self.software.trackName;
    self.labelDescription.text = self.software.descriptionApp;
    
    self.imageViewLogo.imageURL = [NSURL URLWithString:self.software.artworkUrl100];
    
    // Radius
    self.imageViewLogo.layer.cornerRadius = 10;
    self.imageViewLogo.clipsToBounds = YES;
    self.imageViewLogo.layer.masksToBounds = YES;
    // Border
    self.imageViewLogo.layer.borderColor = [UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1].CGColor;
    self.imageViewLogo.layer.borderWidth = 1.0;

}

@end
