//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NAMObjectModel.h"

@interface SVSoftware : NAMObjectModel

@property (strong, nonatomic) NSString *bundleId;

@property (strong, nonatomic) NSString *artistViewUrl;
@property (strong, nonatomic) NSString *artworkUrl100;
@property (strong, nonatomic) NSString *kind;
@property (strong, nonatomic) NSNumber *averageUserRatingForCurrentVersion;
@property (strong, nonatomic) NSString *fileSizeBytes;
@property (strong, nonatomic) NSString *sellerUrl;
@property (strong, nonatomic) NSString *trackViewUrl;
@property (strong, nonatomic) NSString *wrapperType;
@property (strong, nonatomic) NSString *version;
@property (strong, nonatomic) NSString *descriptionApp;
@property (strong, nonatomic) NSString *artistName;
@property (strong, nonatomic) NSArray *genres;
@property (strong, nonatomic) NSNumber *trackId;
@property (strong, nonatomic) NSString *trackName;
@property (strong, nonatomic) NSString *releaseDate;
@property (strong, nonatomic) NSString *releaseNotes;
@property (strong, nonatomic) NSString *sellerName;
@property (strong, nonatomic) NSString *formattedPrice;
@property (strong, nonatomic) NSString *minimumOsVersion;


- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;

@end
