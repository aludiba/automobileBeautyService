#import "RACChannelTerminal+Bm.h"
@implementation RACChannelTerminal (Bm)
+ (BOOL)initWithValuesOtherterminalBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)sendErrorBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sendCompletedBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
