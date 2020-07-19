#import <UIKit/UIKit.h>
#import "UIAlertView+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>
#import "UIAlertView+RACSignalSupportBm.h"

@interface UIAlertView (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM;
+ (BOOL)rac_buttonClickedSignalBmBm:(NSInteger)BM;
+ (BOOL)rac_willDismissSignalBmBm:(NSInteger)BM;

@end
