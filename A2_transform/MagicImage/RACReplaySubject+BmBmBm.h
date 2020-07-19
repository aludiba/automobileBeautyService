#import "RACSubject.h"
#import "RACReplaySubject.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACTuple.h"
#import "RACReplaySubject+Bm.h"
#import "RACReplaySubject+BmBm.h"

@interface RACReplaySubject (BmBmBm)
+ (BOOL)replaySubjectWithCapacityBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithCapacityBmBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBmBm:(NSInteger)BM;
+ (BOOL)sendNextBmBmBm:(NSInteger)BM;
+ (BOOL)sendCompletedBmBmBm:(NSInteger)BM;
+ (BOOL)sendErrorBmBmBm:(NSInteger)BM;

@end
