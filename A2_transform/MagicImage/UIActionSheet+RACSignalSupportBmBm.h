#import <UIKit/UIKit.h>
#import "UIActionSheet+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>
#import "UIActionSheet+RACSignalSupportBm.h"

@interface UIActionSheet (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM;
+ (BOOL)rac_buttonClickedSignalBmBm:(NSInteger)BM;

@end
