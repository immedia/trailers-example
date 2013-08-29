//
//  TRTrailer.m
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import "TRTrailer.h"

@implementation TRTrailer

- (id)initWithDictionary:(NSDictionary *)dictionary {
  self = [super init];
  
  if (self) {
    self.title = dictionary[@"title"];
    self.desc = dictionary[@"desc"];
    self.date = dictionary[@"date"];
    self.category = dictionary[@"category"];
    self.image = dictionary[@"image"];
    self.featuredImage = dictionary[@"featured_image"];
    self.featured = [dictionary[@"featured"] boolValue];
  }
  
  return self;
}

@end
