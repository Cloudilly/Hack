//
//  AppDelegate.h
//  vendors
//
//  Created by Zhongcai Ng on 17/7/15.
//  Copyright (c) 2015 Jetbay Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@class DataManager, MainViewController;

@interface AppDelegate: UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat thick;
@property (strong, nonatomic) DataManager *dataManager;
@property (strong, nonatomic) MainViewController *mainViewController;

@end