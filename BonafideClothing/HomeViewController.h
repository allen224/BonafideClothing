//
//  HomeViewController.h
//  BonafideClothing
//
//  Created by Pauline Milan on 7/10/14.
//  Copyright (c) 2014 Pauline Milan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideShow.h"


@class PromoInfoView, MenuView;

@interface HomeViewController : UIViewController <SlideShowDelegate>
{
    NSArray *promoInfoArray;
}

- (IBAction)closeButtonPressed:(id)sender;

- (IBAction)SlideShowStopButtonClicked:(id)sender;
@property (strong, nonatomic) IBOutlet PromoInfoView *promoInfoView;
@property (strong, nonatomic) IBOutlet SlideShow *slideshow;
@property (strong, nonatomic) IBOutlet UILabel *promoInfoLabel;

// Social Media Buttons
- (IBAction)facebookButtonPressed:(id)sender;
- (IBAction)instagramButtonPressed:(id)sender;
- (IBAction)tumblrButtonPressed:(id)sender;
- (IBAction)twitterButtonPressed:(id)sender;




@end
