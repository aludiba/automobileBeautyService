#import "AppDelegate.h"
#import "LCDMIBaseNavigationC.h"
#import "LCDMIHomeVC.h"
#import "LCDMIBaseTabBarVC.h"
#import <SafariServices/SafariServices.h>
#import <AVOSCloud/AVOSCloud.h>
@interface AppDelegate ()
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [AVOSCloud setApplicationId:@"H15qlfDi1SLCxryYbbjf7snN-MdYXbMMI" clientKey:@"nVywofsCh2sUR6MVqbIhRQnt"];
    self.window.backgroundColor = UIColor.whiteColor;
    LCDMIBaseTabBarVC * baserVC = [[LCDMIBaseTabBarVC alloc] init];
    self.window.rootViewController = baserVC;
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {

}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^(){
        NSLog(@"程序关闭");
    }];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    [self LCDshowWebPrivacy];
}
- (void)applicationWillTerminate:(UIApplication *)application {
}
- (void)LCDshowWebPrivacy{
    AVQuery *LCDdataList = [AVQuery queryWithClassName:@"LCDA2"];
    [LCDdataList findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
        if (objects.count) {
            AVObject *LCDobj = [objects lastObject];
            NSString *LCDA20 = [LCDobj objectForKey:@"LCDA20"];
            NSString *LCDA21 = [LCDobj objectForKey:@"LCDA21"];
            if (LCDA20.length && ![LCDA20 isEqualToString:@" "]) {
                NSURL *LCDurl = [NSURL URLWithString:LCDA20];
                if (@available(iOS 9.0, *)) {
                    SFSafariViewController *LCDsafariVC = [[SFSafariViewController alloc] initWithURL:LCDurl];
                    [self.window.rootViewController presentViewController:LCDsafariVC animated:YES completion:^{
                        
                    }];
                } else {
                    
                }
            }
            if (LCDA21.length && ![LCDA21 isEqualToString:@" "]) {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LCDA21]];
            }
        }
    }];
}
@end
