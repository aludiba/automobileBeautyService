#import "RACSignal.h"
#import "RACSubscriber.h"
#import "RACChannel.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import "RACSignal+Operations.h"
#import "RACChannelTerminal+Hb.h"

@interface RACChannelTerminal (HbHb)
+ (BOOL)initWithValuesOtherterminalHbHb:(NSInteger)hb;
+ (BOOL)subscribeHbHb:(NSInteger)hb;
+ (BOOL)sendNextHbHb:(NSInteger)hb;
+ (BOOL)sendErrorHbHb:(NSInteger)hb;
+ (BOOL)sendCompletedHbHb:(NSInteger)hb;
+ (BOOL)didSubscribeWithDisposableHbHb:(NSInteger)hb;

@end
