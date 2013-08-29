//
//  TRAPI.h
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRAPI : NSObject

+ (void)getTrailers:(void(^)(NSArray* trailers))completionBlock onError:(void(^)(NSString *message))failureBlock;

@end
