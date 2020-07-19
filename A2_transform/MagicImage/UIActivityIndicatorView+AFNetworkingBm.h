#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIActivityIndicatorView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIActivityIndicatorView (AFNetworkingBm)
+ (BOOL)af_notificationObserverBm:(NSInteger)BM;
+ (BOOL)setAnimatingWithStateOfTaskBm:(NSInteger)BM;

@end
