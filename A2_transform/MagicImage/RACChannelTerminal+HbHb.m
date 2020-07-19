#import "RACChannelTerminal+HbHb.h"
@implementation RACChannelTerminal (HbHb)
+ (BOOL)initWithValuesOtherterminalHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)subscribeHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)sendNextHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sendErrorHbHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sendCompletedHbHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)didSubscribeWithDisposableHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
