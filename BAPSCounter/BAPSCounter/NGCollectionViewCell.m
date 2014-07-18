//
//  NGCollectionViewCell.m
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/25/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import "NGCollectionViewCell.h"

@implementation NGCollectionViewCell

NSInteger numberz;;
@synthesize title;
@synthesize number;
@synthesize add;
@synthesize subtract;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (int) gettotal {
    return [[NSUserDefaults standardUserDefaults] integerForKey:title.text];
}

- (IBAction) addStff {
    if(numberz==nil){
        numberz=0;
    }
    numberz=[[NSUserDefaults standardUserDefaults] integerForKey:title.text];
    numberz++;
    NSString* asd = [NSString stringWithFormat:@"%d", numberz];
    [[NSUserDefaults standardUserDefaults] setInteger:numberz forKey:title.text];
    number.text=asd;
    int total=[[NSUserDefaults standardUserDefaults] integerForKey:@"total"];

    [[NSUserDefaults standardUserDefaults] setInteger:(total+1) forKey:@"total"];

    
    
}

-(IBAction)clearStff {
    if(numberz==nil){
        numberz=0;
    }
    numberz=[[NSUserDefaults standardUserDefaults] integerForKey:title.text];
    numberz--;
    NSString* asd = [NSString stringWithFormat:@"%d", numberz];
    [[NSUserDefaults standardUserDefaults] setInteger:numberz forKey:title.text];
    number.text=asd;
    
    int total=[[NSUserDefaults standardUserDefaults] integerForKey:@"total"];
    
    [[NSUserDefaults standardUserDefaults] setInteger:(total+numberz) forKey:@"total"];
}


@end
