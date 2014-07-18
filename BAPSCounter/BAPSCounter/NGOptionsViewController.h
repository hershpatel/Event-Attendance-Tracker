//
//  NGOptionsViewController.h
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/26/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NGOptionsViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *amount;
@property (weak, nonatomic) IBOutlet UIButton *reset;

-(IBAction)resetStuff;
@end
