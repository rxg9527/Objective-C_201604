//
//  XGApplications.m
//
//  Created by 晓刚 阮 on 16/4/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "XGApplications.h"


NSString *const kXGApplicationsFileSize = @"fileSize";
NSString *const kXGApplicationsSlug = @"slug";
NSString *const kXGApplicationsLastPrice = @"lastPrice";
NSString *const kXGApplicationsRatingOverall = @"ratingOverall";
NSString *const kXGApplicationsApplicationId = @"applicationId";
NSString *const kXGApplicationsFavorites = @"favorites";
NSString *const kXGApplicationsReleaseNotes = @"releaseNotes";
NSString *const kXGApplicationsIpa = @"ipa";
NSString *const kXGApplicationsCategoryName = @"categoryName";
NSString *const kXGApplicationsReleaseDate = @"releaseDate";
NSString *const kXGApplicationsDownloads = @"downloads";
NSString *const kXGApplicationsUpdateDate = @"updateDate";
NSString *const kXGApplicationsShares = @"shares";
NSString *const kXGApplicationsItunesUrl = @"itunesUrl";
NSString *const kXGApplicationsVersion = @"version";
NSString *const kXGApplicationsName = @"name";
NSString *const kXGApplicationsStarCurrent = @"starCurrent";
NSString *const kXGApplicationsIconUrl = @"iconUrl";
NSString *const kXGApplicationsStarOverall = @"starOverall";
NSString *const kXGApplicationsPriceTrend = @"priceTrend";
NSString *const kXGApplicationsExpireDatetime = @"expireDatetime";
NSString *const kXGApplicationsCurrentPrice = @"currentPrice";
NSString *const kXGApplicationsCategoryId = @"categoryId";
NSString *const kXGApplicationsDescription = @"description";


@interface XGApplications ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation XGApplications

@synthesize fileSize = _fileSize;
@synthesize slug = _slug;
@synthesize lastPrice = _lastPrice;
@synthesize ratingOverall = _ratingOverall;
@synthesize applicationId = _applicationId;
@synthesize favorites = _favorites;
@synthesize releaseNotes = _releaseNotes;
@synthesize ipa = _ipa;
@synthesize categoryName = _categoryName;
@synthesize releaseDate = _releaseDate;
@synthesize downloads = _downloads;
@synthesize updateDate = _updateDate;
@synthesize shares = _shares;
@synthesize itunesUrl = _itunesUrl;
@synthesize version = _version;
@synthesize name = _name;
@synthesize starCurrent = _starCurrent;
@synthesize iconUrl = _iconUrl;
@synthesize starOverall = _starOverall;
@synthesize priceTrend = _priceTrend;
@synthesize expireDatetime = _expireDatetime;
@synthesize currentPrice = _currentPrice;
@synthesize categoryId = _categoryId;
@synthesize applicationsDescription = _applicationsDescription;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.fileSize = [self objectOrNilForKey:kXGApplicationsFileSize fromDictionary:dict];
            self.slug = [self objectOrNilForKey:kXGApplicationsSlug fromDictionary:dict];
            self.lastPrice = [self objectOrNilForKey:kXGApplicationsLastPrice fromDictionary:dict];
            self.ratingOverall = [self objectOrNilForKey:kXGApplicationsRatingOverall fromDictionary:dict];
            self.applicationId = [self objectOrNilForKey:kXGApplicationsApplicationId fromDictionary:dict];
            self.favorites = [self objectOrNilForKey:kXGApplicationsFavorites fromDictionary:dict];
            self.releaseNotes = [self objectOrNilForKey:kXGApplicationsReleaseNotes fromDictionary:dict];
            self.ipa = [self objectOrNilForKey:kXGApplicationsIpa fromDictionary:dict];
            self.categoryName = [self objectOrNilForKey:kXGApplicationsCategoryName fromDictionary:dict];
            self.releaseDate = [self objectOrNilForKey:kXGApplicationsReleaseDate fromDictionary:dict];
            self.downloads = [self objectOrNilForKey:kXGApplicationsDownloads fromDictionary:dict];
            self.updateDate = [self objectOrNilForKey:kXGApplicationsUpdateDate fromDictionary:dict];
            self.shares = [self objectOrNilForKey:kXGApplicationsShares fromDictionary:dict];
            self.itunesUrl = [self objectOrNilForKey:kXGApplicationsItunesUrl fromDictionary:dict];
            self.version = [self objectOrNilForKey:kXGApplicationsVersion fromDictionary:dict];
            self.name = [self objectOrNilForKey:kXGApplicationsName fromDictionary:dict];
            self.starCurrent = [self objectOrNilForKey:kXGApplicationsStarCurrent fromDictionary:dict];
            self.iconUrl = [self objectOrNilForKey:kXGApplicationsIconUrl fromDictionary:dict];
            self.starOverall = [self objectOrNilForKey:kXGApplicationsStarOverall fromDictionary:dict];
            self.priceTrend = [self objectOrNilForKey:kXGApplicationsPriceTrend fromDictionary:dict];
            self.expireDatetime = [self objectOrNilForKey:kXGApplicationsExpireDatetime fromDictionary:dict];
            self.currentPrice = [self objectOrNilForKey:kXGApplicationsCurrentPrice fromDictionary:dict];
            self.categoryId = [[self objectOrNilForKey:kXGApplicationsCategoryId fromDictionary:dict] doubleValue];
            self.applicationsDescription = [self objectOrNilForKey:kXGApplicationsDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.fileSize forKey:kXGApplicationsFileSize];
    [mutableDict setValue:self.slug forKey:kXGApplicationsSlug];
    [mutableDict setValue:self.lastPrice forKey:kXGApplicationsLastPrice];
    [mutableDict setValue:self.ratingOverall forKey:kXGApplicationsRatingOverall];
    [mutableDict setValue:self.applicationId forKey:kXGApplicationsApplicationId];
    [mutableDict setValue:self.favorites forKey:kXGApplicationsFavorites];
    [mutableDict setValue:self.releaseNotes forKey:kXGApplicationsReleaseNotes];
    [mutableDict setValue:self.ipa forKey:kXGApplicationsIpa];
    [mutableDict setValue:self.categoryName forKey:kXGApplicationsCategoryName];
    [mutableDict setValue:self.releaseDate forKey:kXGApplicationsReleaseDate];
    [mutableDict setValue:self.downloads forKey:kXGApplicationsDownloads];
    [mutableDict setValue:self.updateDate forKey:kXGApplicationsUpdateDate];
    [mutableDict setValue:self.shares forKey:kXGApplicationsShares];
    [mutableDict setValue:self.itunesUrl forKey:kXGApplicationsItunesUrl];
    [mutableDict setValue:self.version forKey:kXGApplicationsVersion];
    [mutableDict setValue:self.name forKey:kXGApplicationsName];
    [mutableDict setValue:self.starCurrent forKey:kXGApplicationsStarCurrent];
    [mutableDict setValue:self.iconUrl forKey:kXGApplicationsIconUrl];
    [mutableDict setValue:self.starOverall forKey:kXGApplicationsStarOverall];
    [mutableDict setValue:self.priceTrend forKey:kXGApplicationsPriceTrend];
    [mutableDict setValue:self.expireDatetime forKey:kXGApplicationsExpireDatetime];
    [mutableDict setValue:self.currentPrice forKey:kXGApplicationsCurrentPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryId] forKey:kXGApplicationsCategoryId];
    [mutableDict setValue:self.applicationsDescription forKey:kXGApplicationsDescription];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.fileSize = [aDecoder decodeObjectForKey:kXGApplicationsFileSize];
    self.slug = [aDecoder decodeObjectForKey:kXGApplicationsSlug];
    self.lastPrice = [aDecoder decodeObjectForKey:kXGApplicationsLastPrice];
    self.ratingOverall = [aDecoder decodeObjectForKey:kXGApplicationsRatingOverall];
    self.applicationId = [aDecoder decodeObjectForKey:kXGApplicationsApplicationId];
    self.favorites = [aDecoder decodeObjectForKey:kXGApplicationsFavorites];
    self.releaseNotes = [aDecoder decodeObjectForKey:kXGApplicationsReleaseNotes];
    self.ipa = [aDecoder decodeObjectForKey:kXGApplicationsIpa];
    self.categoryName = [aDecoder decodeObjectForKey:kXGApplicationsCategoryName];
    self.releaseDate = [aDecoder decodeObjectForKey:kXGApplicationsReleaseDate];
    self.downloads = [aDecoder decodeObjectForKey:kXGApplicationsDownloads];
    self.updateDate = [aDecoder decodeObjectForKey:kXGApplicationsUpdateDate];
    self.shares = [aDecoder decodeObjectForKey:kXGApplicationsShares];
    self.itunesUrl = [aDecoder decodeObjectForKey:kXGApplicationsItunesUrl];
    self.version = [aDecoder decodeObjectForKey:kXGApplicationsVersion];
    self.name = [aDecoder decodeObjectForKey:kXGApplicationsName];
    self.starCurrent = [aDecoder decodeObjectForKey:kXGApplicationsStarCurrent];
    self.iconUrl = [aDecoder decodeObjectForKey:kXGApplicationsIconUrl];
    self.starOverall = [aDecoder decodeObjectForKey:kXGApplicationsStarOverall];
    self.priceTrend = [aDecoder decodeObjectForKey:kXGApplicationsPriceTrend];
    self.expireDatetime = [aDecoder decodeObjectForKey:kXGApplicationsExpireDatetime];
    self.currentPrice = [aDecoder decodeObjectForKey:kXGApplicationsCurrentPrice];
    self.categoryId = [aDecoder decodeDoubleForKey:kXGApplicationsCategoryId];
    self.applicationsDescription = [aDecoder decodeObjectForKey:kXGApplicationsDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_fileSize forKey:kXGApplicationsFileSize];
    [aCoder encodeObject:_slug forKey:kXGApplicationsSlug];
    [aCoder encodeObject:_lastPrice forKey:kXGApplicationsLastPrice];
    [aCoder encodeObject:_ratingOverall forKey:kXGApplicationsRatingOverall];
    [aCoder encodeObject:_applicationId forKey:kXGApplicationsApplicationId];
    [aCoder encodeObject:_favorites forKey:kXGApplicationsFavorites];
    [aCoder encodeObject:_releaseNotes forKey:kXGApplicationsReleaseNotes];
    [aCoder encodeObject:_ipa forKey:kXGApplicationsIpa];
    [aCoder encodeObject:_categoryName forKey:kXGApplicationsCategoryName];
    [aCoder encodeObject:_releaseDate forKey:kXGApplicationsReleaseDate];
    [aCoder encodeObject:_downloads forKey:kXGApplicationsDownloads];
    [aCoder encodeObject:_updateDate forKey:kXGApplicationsUpdateDate];
    [aCoder encodeObject:_shares forKey:kXGApplicationsShares];
    [aCoder encodeObject:_itunesUrl forKey:kXGApplicationsItunesUrl];
    [aCoder encodeObject:_version forKey:kXGApplicationsVersion];
    [aCoder encodeObject:_name forKey:kXGApplicationsName];
    [aCoder encodeObject:_starCurrent forKey:kXGApplicationsStarCurrent];
    [aCoder encodeObject:_iconUrl forKey:kXGApplicationsIconUrl];
    [aCoder encodeObject:_starOverall forKey:kXGApplicationsStarOverall];
    [aCoder encodeObject:_priceTrend forKey:kXGApplicationsPriceTrend];
    [aCoder encodeObject:_expireDatetime forKey:kXGApplicationsExpireDatetime];
    [aCoder encodeObject:_currentPrice forKey:kXGApplicationsCurrentPrice];
    [aCoder encodeDouble:_categoryId forKey:kXGApplicationsCategoryId];
    [aCoder encodeObject:_applicationsDescription forKey:kXGApplicationsDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    XGApplications *copy = [[XGApplications alloc] init];
    
    if (copy) {

        copy.fileSize = [self.fileSize copyWithZone:zone];
        copy.slug = [self.slug copyWithZone:zone];
        copy.lastPrice = [self.lastPrice copyWithZone:zone];
        copy.ratingOverall = [self.ratingOverall copyWithZone:zone];
        copy.applicationId = [self.applicationId copyWithZone:zone];
        copy.favorites = [self.favorites copyWithZone:zone];
        copy.releaseNotes = [self.releaseNotes copyWithZone:zone];
        copy.ipa = [self.ipa copyWithZone:zone];
        copy.categoryName = [self.categoryName copyWithZone:zone];
        copy.releaseDate = [self.releaseDate copyWithZone:zone];
        copy.downloads = [self.downloads copyWithZone:zone];
        copy.updateDate = [self.updateDate copyWithZone:zone];
        copy.shares = [self.shares copyWithZone:zone];
        copy.itunesUrl = [self.itunesUrl copyWithZone:zone];
        copy.version = [self.version copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.starCurrent = [self.starCurrent copyWithZone:zone];
        copy.iconUrl = [self.iconUrl copyWithZone:zone];
        copy.starOverall = [self.starOverall copyWithZone:zone];
        copy.priceTrend = [self.priceTrend copyWithZone:zone];
        copy.expireDatetime = [self.expireDatetime copyWithZone:zone];
        copy.currentPrice = [self.currentPrice copyWithZone:zone];
        copy.categoryId = self.categoryId;
        copy.applicationsDescription = [self.applicationsDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
