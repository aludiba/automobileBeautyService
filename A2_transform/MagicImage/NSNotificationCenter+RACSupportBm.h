#import <Foundation/Foundation.h>
#import "NSNotificationCenter+RACSupport.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACDisposable.h"

@interface NSNotificationCenter (RACSupportBm)
+ (BOOL)rac_addObserverForNameObjectBm:(NSInteger)BM;

@end
