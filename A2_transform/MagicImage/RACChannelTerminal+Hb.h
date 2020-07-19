#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACChannel.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"

@interface RACChannelTerminal (Hb)
+ (BOOL)initWithValuesOtherterminalHb:(NSInteger)hb;
+ (BOOL)subscribeHb:(NSInteger)hb;
+ (BOOL)sendNextHb:(NSInteger)hb;
+ (BOOL)sendErrorHb:(NSInteger)hb;
+ (BOOL)sendCompletedHb:(NSInteger)hb;
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb;

@end
