//
//  AppDelegate.m
//  hack
//
//  Created by Zhongcai Ng on 17/7/15.
//  Copyright © 2015 Cloudilly Private Limited. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate()
@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.width= [[UIScreen mainScreen] bounds].size.width;
    self.height= [[UIScreen mainScreen] bounds].size.height;
    self.thick= [[UIScreen mainScreen] scale]== 2.0 ? 0.5 : 1.0;
    
    self.window= [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor= [UIColor clearColor];
    self.mainViewController= [[MainViewController alloc] init];
    self.window.rootViewController= self.mainViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)applicationWillResignActive:(UIApplication *)application { }
-(void)applicationDidEnterBackground:(UIApplication *)application { }
-(void)applicationWillEnterForeground:(UIApplication *)application { }
-(void)applicationDidBecomeActive:(UIApplication *)application { }
-(void)applicationWillTerminate:(UIApplication *)application { }

@end