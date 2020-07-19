#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIRefreshControl+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"
#import "UIRefreshControl+AFNetworkingBm.h"

@interface UIRefreshControl (AFNetworkingBmBm)
+ (BOOL)af_notificationObserverBmBm:(NSInteger)BM;
+ (BOOL)setRefreshingWithStateOfTaskBmBm:(NSInteger)BM;

@end
