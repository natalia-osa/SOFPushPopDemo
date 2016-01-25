//
//  AViewController.m
//  PushDemo
//
//  Created by Natalia Paula Osiecka on 25/01/16.
//  Copyright © 2016 BitPals. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor redColor]];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setTitle:@"A: Tap to show B" forState:UIControlStateNormal];
    [pushButton setFrame:CGRectMake(10, 100, 300, 30)];
    [pushButton addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

/// show B modally
- (void)pushButtonAction:(id)sender {
    [self presentViewController:[BViewController new] animated:YES completion:nil];
}

@end
