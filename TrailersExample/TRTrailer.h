//
//  TRTrailer.h
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRTrailer : NSObject

- initWithDictionary:(NSDictionary*)dictionary;

@property (nonatomic, strong) NSString *title, *desc, *date, *image, *category, *featuredImage;
@property (nonatomic) BOOL featured;

@end
