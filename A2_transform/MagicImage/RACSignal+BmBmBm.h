#import <Foundation/Foundation.h>
#import "RACAnnotations.h"
#import "RACStream.h"
#import "RACSignal.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACDynamicSignal.h"
#import "RACEmptySignal.h"
#import "RACErrorSignal.h"
#import "RACMulticastConnection.h"
#import "RACReplaySubject.h"
#import "RACReturnSignal.h"
#import "RACScheduler.h"
#import "RACSerialDisposable.h"
#import "RACSignal+Operations.h"
#import "RACSubject.h"
#import "RACSubscriber+Private.h"
#import "RACTuple.h"
#import <libkern/OSAtomic.h>
#import "RACSignal+Bm.h"
#import "RACSignal+BmBm.h"

@interface RACSignal (BmBmBm)
+ (BOOL)createSignalBmBmBm:(NSInteger)BM;
+ (BOOL)errorBmBmBm:(NSInteger)BM;
+ (BOOL)neverBmBmBm:(NSInteger)BM;
+ (BOOL)startEagerlyWithSchedulerBlockBmBmBm:(NSInteger)BM;
+ (BOOL)startLazilyWithSchedulerBlockBmBmBm:(NSInteger)BM;
+ (BOOL)descriptionBmBmBm:(NSInteger)BM;

@end
