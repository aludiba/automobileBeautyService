#import "RACChannelTerminal+Hb.h"
@implementation RACChannelTerminal (Hb)
+ (BOOL)initWithValuesOtherterminalHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)sendErrorHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)sendCompletedHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
