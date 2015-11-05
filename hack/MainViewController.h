//
//  MainViewController.h
//  vendors
//
//  Created by Zhongcai Ng on 17/7/15.
//  Copyright (c) 2015 Jetbay Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "SixViewController.h"
#import "SevenViewController.h"

@class OneViewController, TwoViewController, ThreeViewController, FourViewController, FiveViewController, SixViewController, SevenViewController;

@interface MainViewController: UIViewController {
    CGFloat width;
    CGFloat height;
    CGFloat thick;
}

@property (strong, nonatomic) OneViewController *oneViewController;
@property (strong, nonatomic) TwoViewController *twoViewController;
@property (strong, nonatomic) ThreeViewController *threeViewController;
@property (strong, nonatomic) FourViewController *fourViewController;
@property (strong, nonatomic) FiveViewController *fiveViewController;
@property (strong, nonatomic) SixViewController *sixViewController;
@property (strong, nonatomic) SevenViewController *sevenViewController;

@end