#import "RACPassthroughSubscriber+Hb.h"
@implementation RACPassthroughSubscriber (Hb)
+ (BOOL)initWithSubscriberSignalDisposableHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)sendErrorHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)sendCompletedHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
