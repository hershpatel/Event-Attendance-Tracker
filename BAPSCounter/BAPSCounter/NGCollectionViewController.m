//
//  NGCollectionViewController.m
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/25/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import "NGCollectionViewController.h"

@interface NGCollectionViewController ()

@end

@implementation NGCollectionViewController
@synthesize totalofall;
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
    _places = [@[@"ALLENTOWN", @"ALBANY", @"ATLANTIC CITY", @"BOSTON", @"CHERRY HILL", @"CLIFTON", @"DELAWARE", @"EDISON", @"HARRISBURG", @"HARTFORD", @"JERSEY CITY", @"LANDSDALE", @"MANASSAS", @"NEW YORK", @"NORTHERN VIRGINIA", @"PARSIPPANY", @"PHILADELPHIA", @"RICHMOND", @"ROANOKE", @"ROBBINSVILLE", @"SCRANTON", @"SOUTH BOSTON", @"SPRINGFIELD", @"SYRACUSE", @"VIRGINIA BEACH", @"WARRINGTON", @"WASHINGTON DC", @"WESTCHESTER", @"OUT OF REGION", @"INTERNATIONAL"] mutableCopy];
    
    
}

/*- (UICollectionReusableView *)collectionView:(UICollectionView *)theCollectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)theIndexPath
{
    
    UICollectionReusableView *theView;
    
    if(kind == UICollectionElementKindSectionHeader)
    {
        theView = [theCollectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:theIndexPath];
    } else {
        theView = [theCollectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"footer" forIndexPath:theIndexPath];
    }
    
    return theView;
}*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return _places.count+1-1+1;
}
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}
-(IBAction)updateTotal{
    int total=[[NSUserDefaults standardUserDefaults] integerForKey:@"total"];

    
    NSInteger numberOfItems = [self.collectionView numberOfItemsInSection:0];
    NSArray *a=[self.collectionView indexPathsForVisibleItems];
    NSIndexPath *asdf=[a lastObject];
    
   // NSIndexPath *pathers = [NSIndexPath indexPathWithIndex:numberOfItems-1];

    NGCollectionViewCell *ss=[self.collectionView cellForItemAtIndexPath:asdf];
    
    //ss.title.text=@"ASssDF";
    
    int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:@"total"];
    [[NSUserDefaults standardUserDefaults] setInteger:total forKey:@"Total"];
    [self.collectionView reloadItemsAtIndexPaths:a];

    
    
    
    /*NGTotalCell *sb=[[NGTotalCell alloc]init];
    NSString* locator = [NSString stringWithFormat:@"%d", total];

    sb.totals.text=locator;
    ss=sb;*/
    
    
    //[self.collectionView ]

}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    Boolean found=false;
    long row = [indexPath row];
    long a=_places.count;
    
    
    if(row<a ){
       NGCollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                    forIndexPath:indexPath];
    
    NSString *location;
    
    location = _places[row];
    
    myCell.title.text = location;
    
        int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:location];
        NSLog(@"AS");
        /*if(numberz==nil){
            [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:location];
            int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:location];
        }*/
        myCell.number.text=[NSString stringWithFormat:@"%d", numberz];
        int a=[[NSUserDefaults standardUserDefaults] integerForKey:location];
    
    return myCell;
    
    }
    else{
        NGTotalCell *twoCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SecondCell"forIndexPath:indexPath];
        twoCell.totals.text=@"Total";
        
        int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:@"Total"];
        
        if(numberz==nil){
            [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"Total"];
            int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:@"Total"];
        }
        twoCell.totals.text=[NSString stringWithFormat:@"%d", numberz];
        
        return twoCell;

    }
    
    /*else{
        
        
        NGTotalCell *twoCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SecondCell"forIndexPath:indexPath];
        
        NSInteger total=0;
        for(NSInteger i=0; i<_places.count; i++){
            
            NSIndexPath *path = [NSIndexPath indexPathWithIndex:i];
            NGCollectionViewCell *tes=[collectionView cellForItemAtIndexPath:path];
            total+=[tes gettotal];
            
        }
        
        NSString *locator= [NSString stringWithFormat:@"%d", total];
        
        twoCell.totals.text = locator;
        return twoCell;
        
    }*/
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
