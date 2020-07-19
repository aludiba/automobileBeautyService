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

@interface RACSignal (SubscriptionHb)
+ (BOOL)subscribeHb:(NSInteger)hb;
+ (BOOL)subscribeNextHb:(NSInteger)hb;
+ (BOOL)subscribeNextCompletedHb:(NSInteger)hb;
+ (BOOL)subscribeNextErrorCompletedHb:(NSInteger)hb;
+ (BOOL)subscribeErrorHb:(NSInteger)hb;
+ (BOOL)subscribeCompletedHb:(NSInteger)hb;
+ (BOOL)subscribeNextErrorHb:(NSInteger)hb;
+ (BOOL)subscribeErrorCompletedHb:(NSInteger)hb;

@end
