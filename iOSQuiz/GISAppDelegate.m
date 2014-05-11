//
//  GISAppDelegate.m
//  iOSQuiz
//
//  Created by Jerry Chapman on 5/10/14.
//  Copyright (c) 2014 Jerry Chapman. All rights reserved.
//

#import "GISAppDelegate.h"

@implementation GISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    MainViewController *quizVC = [[MainViewController alloc]init];
    self.window.rootViewController = quizVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
