//
//  SVSyncData.m
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "SVSyncData.h"
#import "UNIRest.h"
#import "SVSoftware.h"
#import "Reachability.h"

@implementation SVSyncData

+ (instancetype)sharedSVSyncData {
    static SVSyncData *_sharedSVSyncData = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSVSyncData = [SVSyncData new];
    });
    return _sharedSVSyncData;
}

#pragma mark - Download Methods

// Download SVSoftwares data From iTunes
-(void) downloadDataOnComplete:(void (^) (NSDictionary* dicReturn))onComplete{
    
    // Verify Internet Connection
    Reachability *reachability = [Reachability reachabilityForInternetConnection
                                  ];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    
    if (networkStatus == NotReachable) {
        onComplete(@{@"success":@0, @"message":@"Sem conexão à internet"});
        return;
    }

    NSDictionary *headers = @{@"accept": @"application/json"};
    
    
    [[UNIRest get:^(UNISimpleRequest *simpleRequest) {
        [simpleRequest setUrl:@"https://itunes.apple.com/search?entity=software&term=insta"];
        [simpleRequest setHeaders:headers];
    }]asJsonAsync:^(UNIHTTPJsonResponse *jsonResponse, NSError *error) {

        NSArray *results = [jsonResponse.body.object objectForKey:@"results"];
        
        for (NSDictionary *dicData in results) {
            SVSoftware *software = [[SVSoftware alloc] initWithJSONDictionary:dicData];
            [software saveData];
        }
        onComplete(@{@"success":@1, @"message":@"Sucesso"});
        
    }];
    NSLog(@"Done!");
}

@end
