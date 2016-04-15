//
//  XGApplications.h
//
//  Created by 晓刚 阮 on 16/4/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface XGApplications : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *fileSize;
@property (nonatomic, strong) NSString *slug;
@property (nonatomic, strong) NSString *lastPrice;
@property (nonatomic, strong) NSString *ratingOverall;
@property (nonatomic, strong) NSString *applicationId;
@property (nonatomic, strong) NSString *favorites;
@property (nonatomic, strong) NSString *releaseNotes;
@property (nonatomic, strong) NSString *ipa;
@property (nonatomic, strong) NSString *categoryName;
@property (nonatomic, strong) NSString *releaseDate;
@property (nonatomic, strong) NSString *downloads;
@property (nonatomic, strong) NSString *updateDate;
@property (nonatomic, strong) NSString *shares;
@property (nonatomic, strong) NSString *itunesUrl;
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *starCurrent;
@property (nonatomic, strong) NSString *iconUrl;
@property (nonatomic, strong) NSString *starOverall;
@property (nonatomic, strong) NSString *priceTrend;
@property (nonatomic, strong) NSString *expireDatetime;
@property (nonatomic, strong) NSString *currentPrice;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, strong) NSString *applicationsDescription;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
