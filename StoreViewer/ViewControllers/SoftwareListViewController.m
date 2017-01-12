//
//  SoftwareListViewController.m
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "SoftwareListViewController.h"
#import "SoftwareListCell.h"
#import "SVSyncData.h"
#import "SVSoftware.h"
#import "SoftwareDetailsViewController.h"

@interface SoftwareListViewController ()

@property(strong, nonatomic) NSMutableArray *arrayValues;
@property(strong, nonatomic) NSMutableArray *arrayAllValues;

@end

@implementation SoftwareListViewController

#pragma mark - ViewController Methods

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data

- (void)loadData {
    [[SVSyncData sharedSVSyncData] downloadDataOnComplete:^(NSDictionary *dicReturn) {

        if ([[dicReturn objectForKey:@"success"] isEqualToNumber:@0]) {
            UIAlertController *alert = [UIAlertController
                    alertControllerWithTitle:@"Atenção"
                                     message:[dicReturn objectForKey:@"message"]
                              preferredStyle:UIAlertControllerStyleAlert];

            UIAlertAction *okButton = [UIAlertAction
                    actionWithTitle:@"OK"
                              style:UIAlertActionStyleCancel
                            handler:^(UIAlertAction *action) {
                                //Handle no, thanks button
                            }];

            dispatch_async(dispatch_get_main_queue(), ^{
                [alert addAction:okButton];
            });

            [self presentViewController:alert animated:YES completion:nil];
        }

        self.arrayAllValues = [[NSMutableArray alloc] initWithArray:[SVSoftware getAllDataWhere:@"1=1"]];
        self.arrayValues = [[NSMutableArray alloc] initWithArray:self.arrayAllValues];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableViewSoftwares reloadData];
        });
    }];
}

#pragma TableView Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SVSoftware *software = [self.arrayValues objectAtIndex:indexPath.row];
    
    SoftwareDetailsViewController *viewController = [[UIStoryboard storyboardWithName:@"SoftwareDetails" bundle:nil] instantiateInitialViewController];
    viewController.software = software;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell = [tableView dequeueReusableCellWithIdentifier:@"cellSoftwareList"];
    SoftwareListCell *currentCell = (SoftwareListCell *) cell;
    currentCell.software = [self.arrayValues objectAtIndex:indexPath.row];
   
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayValues.count;
}


@end
