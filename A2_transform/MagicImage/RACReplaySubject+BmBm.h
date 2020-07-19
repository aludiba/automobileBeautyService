#import "RACSubject.h"
#import "RACReplaySubject.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACTuple.h"
#import "RACReplaySubject+Bm.h"

@interface RACReplaySubject (BmBm)
+ (BOOL)replaySubjectWithCapacityBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithCapacityBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBm:(NSInteger)BM;
+ (BOOL)sendNextBmBm:(NSInteger)BM;
+ (BOOL)sendCompletedBmBm:(NSInteger)BM;
+ (BOOL)sendErrorBmBm:(NSInteger)BM;

@end
