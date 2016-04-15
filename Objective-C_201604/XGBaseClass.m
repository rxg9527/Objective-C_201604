//
//  XGBaseClass.m
//
//  Created by 晓刚 阮 on 16/4/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "XGBaseClass.h"
#import "XGApplications.h"


NSString *const kXGBaseClassApplications = @"applications";


@interface XGBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation XGBaseClass

@synthesize applications = _applications;


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
    NSObject *receivedXGApplications = [dict objectForKey:kXGBaseClassApplications];
    NSMutableArray *parsedXGApplications = [NSMutableArray array];
    if ([receivedXGApplications isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedXGApplications) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedXGApplications addObject:[XGApplications modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedXGApplications isKindOfClass:[NSDictionary class]]) {
       [parsedXGApplications addObject:[XGApplications modelObjectWithDictionary:(NSDictionary *)receivedXGApplications]];
    }

    self.applications = [NSArray arrayWithArray:parsedXGApplications];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForApplications = [NSMutableArray array];
    for (NSObject *subArrayObject in self.applications) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForApplications addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForApplications addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForApplications] forKey:kXGBaseClassApplications];

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

    self.applications = [aDecoder decodeObjectForKey:kXGBaseClassApplications];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_applications forKey:kXGBaseClassApplications];
}

- (id)copyWithZone:(NSZone *)zone
{
    XGBaseClass *copy = [[XGBaseClass alloc] init];
    
    if (copy) {

        copy.applications = [self.applications copyWithZone:zone];
    }
    
    return copy;
}


@end
