//
//  TRViewController.m
//  TrailersExample
//
//  Created by James Smith on 2013/08/17.
//  Copyright (c) 2013 immedia. All rights reserved.
//

#import "TRViewController.h"
#import "TRTrailerCell.h"
#import "TRAPI.h"
#import "UIImageView+AFNetworking.h"
#import "TRTrailer.h"
#import "TRDetailViewController.h"

@interface TRViewController ()

@property (nonatomic, strong) NSArray *trailers;
@property (nonatomic, strong) TRTrailer *selectedTrailer;

@end

@implementation TRViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [TRAPI getTrailers:^(NSArray *trailers) {
    self.trailers = trailers;
    [self.collectionView reloadData];
  } onError:^(NSString *message) {
    UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"Error"
                                                   message:message
                                                  delegate:nil
                                         cancelButtonTitle:@"OK"
                                         otherButtonTitles:nil];
    [view show];
  }];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.trailers.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  TRTrailerCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TrailerCell" forIndexPath:indexPath];
  
  TRTrailer *trailer = self.trailers[indexPath.row];
  
  cell.titleLabel.text = trailer.title;
  [cell.imageView setImageWithURL:[NSURL URLWithString:trailer.image]];
  
  return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(TRTrailerCell *)sender {
  TRTrailer *trailer = self.trailers[[[self.collectionView indexPathsForSelectedItems][0] row]];
  TRDetailViewController *detailVC = segue.destinationViewController;
  detailVC.trailer = trailer;
}


@end
