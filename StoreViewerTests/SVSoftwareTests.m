//
//  SVSoftwareTests.m
//  StoreViewer
//
//  Created by Narlei A Moreira on 11/01/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SVSoftware.h"
@interface SVSoftwareTests : XCTestCase

@end

@implementation SVSoftwareTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testInitWithJson{
    NSDictionary *dicData = @{@"artistViewUrl":@"lorem",
                              @"artworkUrl100":@"lorem",
                              @"kind":@"lorem",
                              @"averageUserRatingForCurrentVersion":@0,
                              @"version":@"lorem",
                              @"description":@"lorem",
                              @"trackId":@0,
                              @"trackName":@"lorem",
                              @"releaseDate":@"lorem",
                              @"releaseNotes":@"lorem",
                              @"sellerName":@"lorem",
                              @"formattedPrice":@"lorem"
                              };
    
    SVSoftware *software = [[SVSoftware alloc] initWithJSONDictionary:dicData];
    
    XCTAssertNotNil(software.artistViewUrl ,@"Property artistViewUrl is nil");
    XCTAssertNotNil(software.artworkUrl100 ,@"Property artworkUrl100 is nil");
    XCTAssertNotNil(software.kind ,@"Property kind is nil");
    XCTAssertNotNil(software.averageUserRatingForCurrentVersion ,@"Property averageUserRatingForCurrentVersion is nil");
    XCTAssertNotNil(software.version ,@"Property version is nil");
    XCTAssertNotNil(software.descriptionApp ,@"Property descriptionApp is nil");
    XCTAssertNotNil(software.trackId ,@"Property trackId is nil");
    XCTAssertNotNil(software.trackName ,@"Property trackName is nil");
    XCTAssertNotNil(software.releaseDate ,@"Property releaseDate is nil");
    XCTAssertNotNil(software.releaseNotes ,@"Property releaseNotes is nil");
    XCTAssertNotNil(software.sellerName ,@"Property sellerName is nil");
    XCTAssertNotNil(software.formattedPrice ,@"Property formattedPrice is nil");
}

@end
