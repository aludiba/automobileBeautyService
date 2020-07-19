#import "RACSubject+Hb.h"
@implementation RACSubject (Hb)
+ (BOOL)subjectHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)enumerateSubscribersUsingBlockHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)sendErrorHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)sendCompletedHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)didSubscribeWithDisposableHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
