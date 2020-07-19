#import "RACSubject.h"
#import "RACReplaySubject.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACTuple.h"

@interface RACReplaySubject (Bm)
+ (BOOL)replaySubjectWithCapacityBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithCapacityBm:(NSInteger)BM;
+ (BOOL)subscribeBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;
+ (BOOL)sendCompletedBm:(NSInteger)BM;
+ (BOOL)sendErrorBm:(NSInteger)BM;

@end
