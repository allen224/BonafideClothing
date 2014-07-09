//
//  SplashScreenViewController.h
//  BonafideClothing
//
//  Created by Bonafide on 7/9/14.
//  Copyright (c) 2014 Pauline Milan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplashScreenViewController : UIViewController {
    NSTimer *myTimer;
}

// Imageview for Splash Screen
@property (weak, nonatomic) IBOutlet UIImageView *splashImageView;

// Array for Splash Screen Images
@property (strong, nonatomic) NSArray *splashScreenImages;

@end
