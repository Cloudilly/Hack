//
//  MainViewController.m
//  hack
//
//  Created by Zhongcai Ng on 17/7/15.
//  Copyright © 2015 Cloudilly Private Limited. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController()
@end

@implementation MainViewController

-(id)init {
    self= [super init];
    if(self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showOneView:) name:@"showOneView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showTwoView:) name:@"showTwoView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showThreeView:) name:@"showThreeView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showFourView:) name:@"showFourView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showFiveView:) name:@"showFiveView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showSixView:) name:@"showSixView" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showSevenView:) name:@"showSevenView" object:nil];
    }
    return self;
}

-(void)loadView {
    width= [self appDelegate].width;
    height= [self appDelegate].height;
    thick= [self appDelegate].thick;
    
    self.view= [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, width, height)];
    self.view.backgroundColor= [UIColor clearColor];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"showOneView" object:nil];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)showOneView:(NSNotification *)notification {
    self.oneViewController= [[OneViewController alloc] init];
    [self.view addSubview:self.oneViewController.view];
}

-(void)showTwoView:(NSNotification *)notification {
    self.twoViewController= [[TwoViewController alloc] init];
    [self.view addSubview:self.twoViewController.view];
}

-(void)showThreeView:(NSNotification *)notification {
    self.threeViewController= [[ThreeViewController alloc] init];
    [self.view addSubview:self.threeViewController.view];
}

-(void)showFourView:(NSNotification *)notification {
    self.fourViewController= [[FourViewController alloc] init];
    [self.view addSubview:self.fourViewController.view];
}

-(void)showFiveView:(NSNotification *)notification {
    self.fiveViewController= [[FiveViewController alloc] init];
    [self.view addSubview:self.fiveViewController.view];
}

-(void)showSixView:(NSNotification *)notification {
    self.sixViewController= [[SixViewController alloc] init];
    [self.view addSubview:self.sixViewController.view];
}

-(void)showSevenView:(NSNotification *)notification {
    self.sevenViewController= [[SevenViewController alloc] init];
    [self.view addSubview:self.sevenViewController.view];
}

-(void)viewDidLoad { [super viewDidLoad]; }
-(void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
-(AppDelegate *)appDelegate { return (AppDelegate *)[[UIApplication sharedApplication] delegate]; }

@end