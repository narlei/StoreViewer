//
//  Created by Cocoa JSON Editor
//  http://www.cocoajsoneditor.com
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

// Import
#import "SVSoftware.h"

@implementation SVSoftware


#pragma mark - WebService

- (id) initWithJSONDictionary:(NSDictionary *)dic
{
	if(self = [super init])
	{
		[self parseJSONDictionary:dic];
	}
	
	return self;
}

- (void) parseJSONDictionary:(NSDictionary *)dic
{
	// PARSER

	id artistViewUrl_ = [dic objectForKey:@"artistViewUrl"];
	if([artistViewUrl_ isKindOfClass:[NSString class]])
	{
		self.artistViewUrl = artistViewUrl_;
	}

	id artworkUrl100_ = [dic objectForKey:@"artworkUrl100"];
	if([artworkUrl100_ isKindOfClass:[NSString class]])
	{
		self.artworkUrl100 = artworkUrl100_;
	}

	id kind_ = [dic objectForKey:@"kind"];
	if([kind_ isKindOfClass:[NSString class]])
	{
		self.kind = kind_;
	}

	id averageUserRatingForCurrentVersion_ = [dic objectForKey:@"averageUserRatingForCurrentVersion"];
	if([averageUserRatingForCurrentVersion_ isKindOfClass:[NSNumber class]])
	{
		self.averageUserRatingForCurrentVersion = averageUserRatingForCurrentVersion_;
	}

	id trackViewUrl_ = [dic objectForKey:@"trackViewUrl"];
	if([trackViewUrl_ isKindOfClass:[NSString class]])
	{
		self.trackViewUrl = trackViewUrl_;
	}

	id version_ = [dic objectForKey:@"version"];
	if([version_ isKindOfClass:[NSString class]])
	{
		self.version = version_;
	}

	id description_ = [dic objectForKey:@"description"];
	if([description_ isKindOfClass:[NSString class]])
	{
		self.descriptionApp = description_;
	}

	id trackId_ = [dic objectForKey:@"trackId"];
	if([trackId_ isKindOfClass:[NSNumber class]])
	{
		self.trackId = trackId_;
	}

	id trackName_ = [dic objectForKey:@"trackName"];
	if([trackName_ isKindOfClass:[NSString class]])
	{
		self.trackName = trackName_;
	}

	id bundleId_ = [dic objectForKey:@"bundleId"];
	if([bundleId_ isKindOfClass:[NSString class]])
	{
		self.bundleId = bundleId_;
	}

	id releaseDate_ = [dic objectForKey:@"releaseDate"];
	if([releaseDate_ isKindOfClass:[NSString class]])
	{
		self.releaseDate = releaseDate_;
	}

	id releaseNotes_ = [dic objectForKey:@"releaseNotes"];
	if([releaseNotes_ isKindOfClass:[NSString class]])
	{
		self.releaseNotes = releaseNotes_;
	}
    
	id sellerName_ = [dic objectForKey:@"sellerName"];
	if([sellerName_ isKindOfClass:[NSString class]])
	{
		self.sellerName = sellerName_;
	}

	id formattedPrice_ = [dic objectForKey:@"formattedPrice"];
	if([formattedPrice_ isKindOfClass:[NSString class]])
	{
		self.formattedPrice = formattedPrice_;
	}
}

#pragma mark - Database

+(NSArray *)primaryKeys{
    return @[@"bundleId"];
}


@end
