//
//  XGBaseClass.h
//
//  Created by 晓刚 阮 on 16/4/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface XGBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *applications;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
