#import "RACSignal.h"
#import "RACDynamicSignal.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSignal+Bm.h"
#import "RACDynamicSignal+BmBm.h"

@interface RACDynamicSignal (BmBmBm)
+ (BOOL)createSignalBmBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBmBm:(NSInteger)BM;

@end
