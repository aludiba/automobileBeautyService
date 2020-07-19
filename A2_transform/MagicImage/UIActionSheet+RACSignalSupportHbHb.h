#import <UIKit/UIKit.h>
#import "UIActionSheet+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>
#import "UIActionSheet+RACSignalSupportHb.h"

@interface UIActionSheet (RACSignalSupportHbHb)
+ (BOOL)rac_delegateProxyHbHb:(NSInteger)hb;
+ (BOOL)rac_buttonClickedSignalHbHb:(NSInteger)hb;

@end
