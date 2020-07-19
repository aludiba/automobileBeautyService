#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACChannel.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"
#import "RACChannelTerminal+Bm.h"

@interface RACChannelTerminal (BmBm)
+ (BOOL)initWithValuesOtherterminalBmBm:(NSInteger)BM;
+ (BOOL)subscribeBmBm:(NSInteger)BM;
+ (BOOL)sendNextBmBm:(NSInteger)BM;
+ (BOOL)sendErrorBmBm:(NSInteger)BM;
+ (BOOL)sendCompletedBmBm:(NSInteger)BM;
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM;

@end
