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
#import "RACSignal+SubscriptionBm.h"

@interface RACSignal (SubscriptionBmBm)
+ (BOOL)subscribeBmBm:(NSInteger)BM;
+ (BOOL)subscribeNextBmBm:(NSInteger)BM;
+ (BOOL)subscribeNextCompletedBmBm:(NSInteger)BM;
+ (BOOL)subscribeNextErrorCompletedBmBm:(NSInteger)BM;
+ (BOOL)subscribeErrorBmBm:(NSInteger)BM;
+ (BOOL)subscribeCompletedBmBm:(NSInteger)BM;
+ (BOOL)subscribeNextErrorBmBm:(NSInteger)BM;
+ (BOOL)subscribeErrorCompletedBmBm:(NSInteger)BM;

@end
