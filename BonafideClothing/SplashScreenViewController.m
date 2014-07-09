//
//  SplashScreenViewController.m
//  BonafideClothing
//
//  Created by Bonafide on 7/9/14.
//  Copyright (c) 2014 Pauline Milan. All rights reserved.
//

#import "SplashScreenViewController.h"

@interface SplashScreenViewController ()

@end

@implementation SplashScreenViewController

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
    
    // Load Splash Screen Images
    _splashScreenImages = @[@"splash_1.png", @"splash_2.png", @"splash_3.png", @"splash_4.png"];
    
    [self countDown];
    
    
}

- (void)changeImage {
    
    static int ctr = 0;
    
    if (ctr == 4) {
        [myTimer invalidate];
        
        
    } else {
        
        self.splashImageView.image = [UIImage imageNamed:[_splashScreenImages objectAtIndex:ctr]];
        ctr++;
    }
    
    NSLog(@"Image %i Done!", ctr);
}

- (void)countDown {
    // Timer
    NSLog(@"countDown method");
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(changeImage) userInfo:nil repeats:YES];
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
