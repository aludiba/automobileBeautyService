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

@interface RACSignal (TestingBm)
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorBm:(NSInteger)BM;
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeoutBm:(NSInteger)BM;
+ (BOOL)asynchronouslyWaitUntilCompletedTimeoutBm:(NSInteger)BM;
+ (BOOL)asynchronouslyWaitUntilCompletedBm:(NSInteger)BM;

@end
