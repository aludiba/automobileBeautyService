#import <UIKit/UIKit.h>
#import "UIActionSheet+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIActionSheet (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb;
+ (BOOL)rac_buttonClickedSignalHb:(NSInteger)hb;

@end
