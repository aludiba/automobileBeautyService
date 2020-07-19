#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIRefreshControl+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIRefreshControl (AFNetworkingHb)
+ (BOOL)af_notificationObserverHb:(NSInteger)hb;
+ (BOOL)setRefreshingWithStateOfTaskHb:(NSInteger)hb;

@end
