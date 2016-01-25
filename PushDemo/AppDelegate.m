//
//  AppDelegate.m
//  PushDemo
//
//  Created by Natalia Paula Osiecka on 25/01/16.
//  Copyright © 2016 BitPals. All rights reserved.
//

#import "AppDelegate.h"
#import "AViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // create the window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    // set view controllers
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[AViewController new]];
    [self.window setRootViewController:navigationController];
    
    return YES;
}

@end
