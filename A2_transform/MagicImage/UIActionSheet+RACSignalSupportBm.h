#import <UIKit/UIKit.h>
#import "UIActionSheet+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIActionSheet (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM;
+ (BOOL)rac_buttonClickedSignalBm:(NSInteger)BM;

@end
