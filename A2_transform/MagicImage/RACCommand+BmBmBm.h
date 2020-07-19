#import <Foundation/Foundation.h>
#import "RACCommand.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSArray+RACSequenceAdditions.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACPropertySubscribing.h"
#import "RACMulticastConnection.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"
#import "RACSequence.h"
#import "RACSignal+Operations.h"
#import <libkern/OSAtomic.h>
#import "RACCommand+Bm.h"
#import "RACCommand+BmBm.h"

@interface RACCommand (BmBmBm)
+ (BOOL)allowsConcurrentExecutionBmBmBm:(NSInteger)BM;
+ (BOOL)setAllowsConcurrentExecutionBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithSignalBlockBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)initWithEnabledSignalblockBmBmBm:(NSInteger)BM;
+ (BOOL)executeBmBmBm:(NSInteger)BM;

@end
