//
//  NGOptionsViewController.m
//  BAPSCounter
//
//  Created by Nikhil Gahlot on 6/26/14.
//  Copyright (c) 2014 Nikhil Gahlot. All rights reserved.
//

#import "NGOptionsViewController.h"

@interface NGOptionsViewController ()

@end

@implementation NGOptionsViewController
@synthesize amount;
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
    // Do any additional setup after loading the view.
    int numberz=[[NSUserDefaults standardUserDefaults] integerForKey:@"total"];
    amount.text=[NSString stringWithFormat:@"%d", numberz];
    NSLog(amount.text);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        NSLog(@"Clicked button index 0");
        // Add the action here
    } else {
        NSLog(@"Clicked button index other than 0");
        NSArray  *places = [@[@"ALLENTOWN", @"ALBANY", @"ATLANTIC CITY", @"BOSTON", @"CHERRY HILL", @"CLIFTON", @"DELAWARE", @"EDISON", @"HARRISBURG", @"HARTFORD", @"JERSEY CITY", @"LANDSDALE", @"MANASSAS", @"NEW YORK", @"NORTHERN VIRGINIA", @"PARSIPPANY", @"PHILADELPHIA", @"RICHMOND", @"ROANOKE", @"ROBBINSVILLE", @"SCRANTON", @"SOUTH BOSTON", @"SPRINGFIELD", @"SYRACUSE", @"VIRGINIA BEACH", @"WARRINGTON", @"WASHINGTON DC", @"WESTCHESTER", @"OUT OF REGION", @"INTERNATIONAL"] mutableCopy];
        
        for(int i=0; i<30; i++){
            
            NSString *think=[places objectAtIndex:i];
            [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:think];
        }
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"total"];
        amount.text=@"0";

    }
}
-(IBAction)resetStuff{
  
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Reset Warning"
                                                      message:@"WARNING! YOU ARE ABOUT TO RESET DATA!."
                                                     delegate:self
                                            cancelButtonTitle:@"Cancel"
                                            otherButtonTitles:nil];
    
    [message addButtonWithTitle:@"Continue Reset"];
   // [message addButtonWithTitle:@"Button 3"];
    
    [message show];
    
    /*
     
    */
    
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
