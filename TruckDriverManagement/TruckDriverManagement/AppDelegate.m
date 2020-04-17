//
//  AppDelegate.m
//  TruckDriverManagement
//
//  Created by 褚红彪 on 2020/4/17.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [AVOSCloud setApplicationId:@"mG34aYISSTic5qVtir31dM6N-MdYXbMMI" clientKey:@"oLHtnYLqrERW7UvQ3UcnA3O5"];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [self rootController];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    AVQuery *bquery = [AVQuery queryWithClassName:@"ALTruckDriverManagement"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[(NSDictionary *)[array lastObject] objectForKey:@"TDM"]]];
    }];
}
- (UIViewController *)rootController{
        ALTabBarController *tabVC = [ALTabBarController ALshareInstance];
        return tabVC;
}
@end
