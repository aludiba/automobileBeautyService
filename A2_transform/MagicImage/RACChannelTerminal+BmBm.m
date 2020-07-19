#import "RACChannelTerminal+BmBm.h"
@implementation RACChannelTerminal (BmBm)
+ (BOOL)initWithValuesOtherterminalBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)sendErrorBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)sendCompletedBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
