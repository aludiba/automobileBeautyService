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

@interface RACCommand (Bm)
+ (BOOL)allowsConcurrentExecutionBm:(NSInteger)BM;
+ (BOOL)setAllowsConcurrentExecutionBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithSignalBlockBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)initWithEnabledSignalblockBm:(NSInteger)BM;
+ (BOOL)executeBm:(NSInteger)BM;

@end
