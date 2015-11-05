//
//  SevenViewController.m
//  vendors
//
//  Created by Zhongcai Ng on 23/7/15.
//  Copyright (c) 2015 Jetbay Inc. All rights reserved.
//

#import "SevenViewController.h"

@interface SevenViewController()
@end

@implementation SevenViewController

-(id)init {
    self= [super init];
    if(self) {
    }
    return self;
}

-(void)loadView {
    width= [self appDelegate].width;
    height= [self appDelegate].height;
    thick= [self appDelegate].thick;
    
    self.view= [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, width, height)];
    self.view.backgroundColor= [UIColor whiteColor];
    
    UIImageView *seven= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    [seven setImage:[UIImage imageNamed:@"Seven"]];
    [self.view addSubview:seven];
    
    [seven setUserInteractionEnabled:YES];
    [seven addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(next)]];
}

-(void)next {
    NSLog(@"SEVEN");
    //[[NSNotificationCenter defaultCenter] postNotificationName:@"showOneView" object:nil];
}

-(void)viewDidLoad { [super viewDidLoad]; }
-(void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
-(AppDelegate *)appDelegate { return (AppDelegate *)[[UIApplication sharedApplication] delegate]; }

@end