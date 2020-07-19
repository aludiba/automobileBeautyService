#import "RACSubject.h"
#import "RACReplaySubject.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACScheduler+Private.h"
#import "RACSubscriber.h"
#import "RACTuple.h"

@interface RACReplaySubject (Hb)
+ (BOOL)replaySubjectWithCapacityHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithCapacityHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;
+ (BOOL)sendCompletedHb:(NSInteger)hb;
+ (BOOL)sendErrorHb:(NSInteger)hb;

@end
