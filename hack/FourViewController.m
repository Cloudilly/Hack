//
//  FourViewController.m
//  vendors
//
//  Created by Zhongcai Ng on 23/7/15.
//  Copyright (c) 2015 Jetbay Inc. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController()
@end

@implementation FourViewController

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
    
    UIImageView *four= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    [four setImage:[UIImage imageNamed:@"Four"]];
    [self.view addSubview:four];
    
    [four setUserInteractionEnabled:YES];
    [four addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(next)]];
}

-(void)next { [[NSNotificationCenter defaultCenter] postNotificationName:@"showFiveView" object:nil]; }
-(void)viewDidLoad { [super viewDidLoad]; }
-(void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
-(AppDelegate *)appDelegate { return (AppDelegate *)[[UIApplication sharedApplication] delegate]; }

@end