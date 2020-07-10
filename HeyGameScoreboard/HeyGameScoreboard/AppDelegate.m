//
//  AppDelegate.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/10.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "AppDelegate.h"
#import "BMScoringViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"PcCJcbsza7wzXrJ4iIqwDP6C-MdYXbMMI" clientKey:@"mJewojB2hcyGapar0ndzzjw6"];
    self.BMwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.BMwindow.backgroundColor = [UIColor whiteColor];
    self.BMwindow.rootViewController = [self BMrootController];
    [self.BMwindow makeKeyAndVisible];
    return YES;
}
- (UIViewController *)BMrootController{
    BMScoringViewController *BMScoringVC = [[BMScoringViewController alloc] init];
    UINavigationController *BMMainVC = [[UINavigationController alloc] initWithRootViewController:BMScoringVC];
    return BMMainVC;
}@end
