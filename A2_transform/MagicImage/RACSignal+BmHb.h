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

@interface RACSignal (BmHb)
+ (BOOL)createSignalBmHb:(NSInteger)hb;
+ (BOOL)errorBmHb:(NSInteger)hb;
+ (BOOL)neverBmHb:(NSInteger)hb;
+ (BOOL)startEagerlyWithSchedulerBlockBmHb:(NSInteger)hb;
+ (BOOL)startLazilyWithSchedulerBlockBmHb:(NSInteger)hb;
+ (BOOL)descriptionBmHb:(NSInteger)hb;

@end
