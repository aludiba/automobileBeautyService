//
//  AppDelegate.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/24.
//  Copyright © 2020 hb. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"
@interface AppDelegate ()
@property(nonatomic,strong)Reachability *BChostReah;
@property(nonatomic,assign)NetworkStatus BCstatus;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"PcCJcbsza7wzXrJ4iIqwDP6C-MdYXbMMI" clientKey:@"mJewojB2hcyGapar0ndzzjw6"];
    self.BCwindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.BCwindow.backgroundColor = [UIColor whiteColor];
    self.BCwindow.rootViewController = [self BCrootController];
    [self.BCwindow makeKeyAndVisible];
    //开启网络状况的监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BCreachabilityChanged:)name:kReachabilityChangedNotification object:nil];
    Reachability *BCreach = [Reachability reachabilityWithHostName:@"www.apple.com"];
    [BCreach startNotifier];
    //开始监听，会启动一个runloop
    [self.BChostReah startNotifier];
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
     Boolean BCisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BCisNet"];
     if (BCisNet) {
         AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCYourNiceWardrobe"];
         [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                 NSDictionary *BCDic = (NSDictionary *)[array firstObject];
                 NSString *BCstring = [BCDic objectForKey:@"YourNiceWardrobe"];
                 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BCstring] options:@{} completionHandler:nil];
         }];
     }
}
-(void)BCreachabilityChanged:(NSNotification *)BCnotification{
    Reachability *BCreach = [BCnotification object];
    if([BCreach isKindOfClass:[Reachability class]]){
        NetworkStatus BCstatus = [BCreach currentReachabilityStatus];
        //如果网络状态发生改变
        if (BCstatus != self.BCstatus) {
            //记录当前网络状态
            self.BCstatus = BCstatus;
            UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:nil message:[self BCisInternetWith:BCstatus] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                   AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCYourNiceWardrobe"];
                   [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
                       Boolean BCisNet = [[NSUserDefaults standardUserDefaults] boolForKey:@"BCisNet"];
                       if (!BCisNet) {
                           NSDictionary *BCDic = (NSDictionary *)[array firstObject];
                           NSString *BCstring = [BCDic objectForKey:@"YourNiceWardrobe"];
                           [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BCstring] options:@{} completionHandler:nil];
                           [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"BCisNet"];
                       }
                   }];
            }];
            [BCalertVC addAction:BCsureAction];
            [BCKeyWindow.rootViewController presentViewController:BCalertVC animated:YES completion:nil];
        }
    }
}
- (NSString*)BCisInternetWith:(NetworkStatus)BCstatus{
    switch (BCstatus) {
        case NotReachable:
            return @"暂无网络";
            break;
        case ReachableViaWiFi:
            return @"WIFI上网";
            break;
        case ReachableViaWWAN:
            return @"移动上网";
            break;
        default:
            break;
    }
}
- (UIViewController *)BCrootController{
        BCTabBarController *BCtabVC = [BCTabBarController BCshareInstance];
        return BCtabVC;
}
@end
