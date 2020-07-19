#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIRefreshControl+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIRefreshControl (AFNetworkingBm)
+ (BOOL)af_notificationObserverBm:(NSInteger)BM;
+ (BOOL)setRefreshingWithStateOfTaskBm:(NSInteger)BM;

@end
