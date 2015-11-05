//
//  TwoViewController.m
//  hack
//
//  Created by Zhongcai Ng on 23/7/15.
//  Copyright © 2015 Cloudilly Private Limited. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController()
@end

@implementation TwoViewController

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
    
    UIImageView *two= [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    [two setImage:[UIImage imageNamed:@"Two"]];
    [self.view addSubview:two];
    
    [two setUserInteractionEnabled:YES];
    [two addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(next)]];
}

-(void)next { [[NSNotificationCenter defaultCenter] postNotificationName:@"showThreeView" object:nil]; }
-(void)viewDidLoad { [super viewDidLoad]; }
-(void)didReceiveMemoryWarning { [super didReceiveMemoryWarning]; }
-(AppDelegate *)appDelegate { return (AppDelegate *)[[UIApplication sharedApplication] delegate]; }

@end