//
//  NGCollectionViewController.h
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/25/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGCollectionViewCell.h"
#import "NGTotalCell.h"
@interface NGCollectionViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *places;
@property NSInteger totalofall;
-(IBAction)updateTotal;
@end
