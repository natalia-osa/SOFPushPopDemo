//
//  CViewController.m
//  PushDemo
//
//  Created by Natalia Paula Osiecka on 25/01/16.
//  Copyright © 2016 BitPals. All rights reserved.
//

#import "CViewController.h"

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setTitle:@"C: Tap to show A" forState:UIControlStateNormal];
    [pushButton setFrame:CGRectMake(10, 100, 300, 30)];
    [pushButton addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

/// pop C
- (void)pushButtonAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
