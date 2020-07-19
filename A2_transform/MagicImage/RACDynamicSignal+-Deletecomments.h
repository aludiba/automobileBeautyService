#import "RACSignal.h"
#import "RACDynamicSignal.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "RACCompoundDisposable.h"
#import "RACPassthroughSubscriber.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import <libkern/OSAtomic.h>

@interface RACDynamicSignal (-Deletecomments)
+ (BOOL)createSignal-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments;

@end
