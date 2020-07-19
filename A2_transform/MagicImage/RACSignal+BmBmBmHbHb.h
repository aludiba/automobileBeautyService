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
#import "RACSignal+BmBmBm.h"
#import "RACSignal+BmBmBmHb.h"

@interface RACSignal (BmBmBmHbHb)
+ (BOOL)createSignalBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)errorBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)neverBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)startEagerlyWithSchedulerBlockBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)startLazilyWithSchedulerBlockBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)descriptionBmBmBmHbHb:(NSInteger)hb;

@end
