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

@interface RACCommand (BmBm)
+ (BOOL)allowsConcurrentExecutionBmBm:(NSInteger)BM;
+ (BOOL)setAllowsConcurrentExecutionBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithSignalBlockBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBm:(NSInteger)BM;
+ (BOOL)initWithEnabledSignalblockBmBm:(NSInteger)BM;
+ (BOOL)executeBmBm:(NSInteger)BM;

@end
