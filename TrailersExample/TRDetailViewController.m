//
//  TRDetailViewController.m
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import "TRDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface TRDetailViewController ()

@end

@implementation TRDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.title = self.trailer.title;
  self.dateLabel.text = self.trailer.date;
  self.categoryLabel.text = self.trailer.category;
  [self.imageView setImageWithURL:[NSURL URLWithString:self.trailer.image]];
  self.descriptionLabel.text = self.trailer.desc;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
