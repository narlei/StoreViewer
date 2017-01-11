//
//  SVSyncData.h
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * This Class responsability is Download all data from API
 */
@interface SVSyncData : NSObject

/*
 * Shared instance to controll number of donwload data if necessary
 */
+ (instancetype)sharedSVSyncData;

#pragma mark - Download Methods

- (void)downloadDataOnComplete:(void (^) (NSDictionary* dicReturn))onComplete;

@end
