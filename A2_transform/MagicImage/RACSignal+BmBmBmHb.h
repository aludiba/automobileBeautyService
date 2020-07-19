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

@interface RACSignal (BmBmBmHb)
+ (BOOL)createSignalBmBmBmHb:(NSInteger)hb;
+ (BOOL)errorBmBmBmHb:(NSInteger)hb;
+ (BOOL)neverBmBmBmHb:(NSInteger)hb;
+ (BOOL)startEagerlyWithSchedulerBlockBmBmBmHb:(NSInteger)hb;
+ (BOOL)startLazilyWithSchedulerBlockBmBmBmHb:(NSInteger)hb;
+ (BOOL)descriptionBmBmBmHb:(NSInteger)hb;

@end
