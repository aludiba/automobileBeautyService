#import "RACSignal.h"
#import "RACDynamicSignal.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSignal+Bm.h"

@interface RACDynamicSignal (BmBm)
+ (BOOL)createSignalBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBm:(NSInteger)BM;

@end
