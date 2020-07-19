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

@interface RACSignal (Bm)
+ (BOOL)createSignalBm:(NSInteger)BM;
+ (BOOL)errorBm:(NSInteger)BM;
+ (BOOL)neverBm:(NSInteger)BM;
+ (BOOL)startEagerlyWithSchedulerBlockBm:(NSInteger)BM;
+ (BOOL)startLazilyWithSchedulerBlockBm:(NSInteger)BM;
+ (BOOL)descriptionBm:(NSInteger)BM;

@end
