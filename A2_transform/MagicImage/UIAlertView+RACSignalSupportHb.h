#import <UIKit/UIKit.h>
#import "UIAlertView+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIAlertView (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb;
+ (BOOL)rac_buttonClickedSignalHb:(NSInteger)hb;
+ (BOOL)rac_willDismissSignalHb:(NSInteger)hb;

@end
