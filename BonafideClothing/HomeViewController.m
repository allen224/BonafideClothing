//
//  HomeViewController.m
//  BonafideClothing
//
//  Created by Pauline Milan on 7/10/14.
//  Copyright (c) 2014 Pauline Milan. All rights reserved.
//

#import "HomeViewController.h"
#import "SlideShow.h"
#import "PromoInfoView.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_nameWhite.png"]];
    
    // Do any additional setup after loading the view.
    
    _slideshow.delegate = self;
    [_slideshow setDelay:1]; // Delay between transitions
    [_slideshow setTransitionDuration:.5]; // Transition duration
    [_slideshow setTransitionType:SlideShowTransitionFade]; // Choose a transition type (fade or slide)
    [_slideshow setImagesContentMode:UIViewContentModeScaleAspectFill]; // Choose a content mode for images to display
    [_slideshow addImagesFromResources:@[@"test_1.jpeg",@"test_2.jpeg",@"test_3.jpeg"]]; // Add images from resources
    
    promoInfoArray = [[NSArray alloc] initWithObjects:@"promo1", @"promo2", @"promo3", nil];
    
    
    //set transition
    [_slideshow setTransitionType:SlideShowTransitionFade];
    
    //start
    [_slideshow start];
    
    //Hide Info View
    self.promoInfoView.hidden = YES;
    self.promoInfoView.backgroundColor = [UIColor colorWithRed: 0.0 green: 0.0 blue:0.0 alpha:80.0];
    
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)closeButtonPressed:(id)sender {
    [_slideshow start];
    self.promoInfoView.hidden = YES;
    
}

- (IBAction)SlideShowStopButtonClicked:(id)sender {
    [_slideshow stop];
    NSLog(@"current index : %d",_slideshow.currentIndex);
    
    self.promoInfoLabel.text = promoInfoArray[_slideshow.currentIndex];
    self.promoInfoView.hidden = NO;
    
    
    
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

- (IBAction)facebookButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/bonafidestore"]];
}

- (IBAction)instagramButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://instagram.com/bonafidestore"]];
}

- (IBAction)tumblrButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://bonafidestore.tumblr.com/"]];
}

- (IBAction)twitterButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/bonafide_store"]];
}
@end
