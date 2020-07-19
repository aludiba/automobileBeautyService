#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIActivityIndicatorView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIActivityIndicatorView (AFNetworkingHb)
+ (BOOL)af_notificationObserverHb:(NSInteger)hb;
+ (BOOL)setAnimatingWithStateOfTaskHb:(NSInteger)hb;

@end
