#import "RACSubscriber+Hb.h"
@implementation RACSubscriber (Hb)
+ (BOOL)subscriberWithNextErrorCompletedHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)sendErrorHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)sendCompletedHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
