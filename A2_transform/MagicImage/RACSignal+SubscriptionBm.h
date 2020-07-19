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

@interface RACSignal (SubscriptionBm)
+ (BOOL)subscribeBm:(NSInteger)BM;
+ (BOOL)subscribeNextBm:(NSInteger)BM;
+ (BOOL)subscribeNextCompletedBm:(NSInteger)BM;
+ (BOOL)subscribeNextErrorCompletedBm:(NSInteger)BM;
+ (BOOL)subscribeErrorBm:(NSInteger)BM;
+ (BOOL)subscribeCompletedBm:(NSInteger)BM;
+ (BOOL)subscribeNextErrorBm:(NSInteger)BM;
+ (BOOL)subscribeErrorCompletedBm:(NSInteger)BM;

@end
