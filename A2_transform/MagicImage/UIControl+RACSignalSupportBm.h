#import <UIKit/UIKit.h>
#import "UIControl+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"

@interface UIControl (RACSignalSupportBm)
+ (BOOL)rac_signalForControlEventsBm:(NSInteger)BM;

@end
