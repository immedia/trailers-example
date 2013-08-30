//
//  TRDetailViewController.h
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRTrailer.h"

@interface TRDetailViewController : UIViewController

@property (strong, nonatomic) TRTrailer *trailer;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
