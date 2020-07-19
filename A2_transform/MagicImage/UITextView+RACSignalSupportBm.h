#import <UIKit/UIKit.h>
#import "UITextView+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "RACTuple.h"
#import <objc/runtime.h>

@interface UITextView (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM;
+ (BOOL)rac_textSignalBm:(NSInteger)BM;

@end
