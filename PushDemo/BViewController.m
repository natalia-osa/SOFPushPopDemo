//
//  BViewController.m
//  PushDemo
//
//  Created by Natalia Paula Osiecka on 25/01/16.
//  Copyright © 2016 BitPals. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor darkGrayColor]];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setTitle:@"B: Tap to show C" forState:UIControlStateNormal];
    [pushButton setFrame:CGRectMake(10, 100, 300, 30)];
    [pushButton addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

/// dismiss B modal, push C
- (void)pushButtonAction:(id)sender {
    UINavigationController *navigationController = (UINavigationController *)[UIApplication.sharedApplication.keyWindow rootViewController];
    [navigationController pushViewController:[CViewController new] animated:YES];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
