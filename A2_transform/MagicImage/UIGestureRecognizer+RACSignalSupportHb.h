#import <UIKit/UIKit.h>
#import "UIGestureRecognizer+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSignal.h"
#import "RACSubscriber.h"

@interface UIGestureRecognizer (RACSignalSupportHb)
+ (BOOL)rac_gestureSignalHb:(NSInteger)hb;

@end
