#import <UIKit/UIKit.h>
#import "UIAlertView+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIAlertView (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM;
+ (BOOL)rac_buttonClickedSignalBm:(NSInteger)BM;
+ (BOOL)rac_willDismissSignalBm:(NSInteger)BM;

@end
