//
//  TRAPI.m
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import "TRAPI.h"
#import "AFNetworking.h"
#import "TRTrailer.h"

@implementation TRAPI

+ (void)getTrailers:(void (^)(NSArray *))completionBlock onError:(void (^)(NSString *))failureBlock {
  NSURL *url = [NSURL URLWithString:@"http://apps.immedia.co.za/trailers/trailers.json"];
  NSURLRequest *request = [NSURLRequest requestWithURL:url];
  
  AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, NSArray *JSON) {
    
    
    
    NSMutableArray *trailerArray = [NSMutableArray arrayWithCapacity:JSON.count];
    for (NSDictionary *dictionary in JSON) {
      TRTrailer *trailer = [[TRTrailer alloc] initWithDictionary:dictionary];
      [trailerArray addObject:trailer];
    }
    
    
    
    completionBlock(trailerArray);
  } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
    NSLog(@"error: %@", error);
    failureBlock(error.localizedDescription);
  }];  
  [operation start];
}

@end
