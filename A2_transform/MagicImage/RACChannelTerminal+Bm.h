#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACChannel.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"

@interface RACChannelTerminal (Bm)
+ (BOOL)initWithValuesOtherterminalBm:(NSInteger)BM;
+ (BOOL)subscribeBm:(NSInteger)BM;
+ (BOOL)sendNextBm:(NSInteger)BM;
+ (BOOL)sendErrorBm:(NSInteger)BM;
+ (BOOL)sendCompletedBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM;

@end
