//
//  NGCollectionViewCell.h
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/25/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGCollectionViewController.h"

@interface NGCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *number;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *subtract;

-(int) gettotal;
- (IBAction)addStff;
-(IBAction)clearStff;
@end
