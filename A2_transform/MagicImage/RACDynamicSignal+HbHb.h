#import "RACSignal.h"
#import "RACDynamicSignal.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import <libkern/OSAtomic.h>
#import "RACDynamicSignal+Hb.h"

@interface RACDynamicSignal (HbHb)
+ (BOOL)createSignalHbHb:(NSInteger)hb;
+ (BOOL)subscribeHbHb:(NSInteger)hb;

@end
