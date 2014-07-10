//
//  HomeViewController.h
//  BonafideClothing
//
//  Created by Pauline Milan on 7/10/14.
//  Copyright (c) 2014 Pauline Milan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideShow.h"
#import "PromoInfoView.h"

@interface HomeViewController : UIViewController <SlideShowDelegate>
{
    NSArray *promoInfoArray;
}
- (IBAction)menuButtonClicked:(id)sender;

- (IBAction)closeButtonPressed:(id)sender;

- (IBAction)SlideShowStopButtonClicked:(id)sender;
@property (strong, nonatomic) IBOutlet PromoInfoView *promoInfoView;
@property (strong, nonatomic) IBOutlet SlideShow *slideshow;
@property (strong, nonatomic) IBOutlet UILabel *promoInfoLabel;


@end
