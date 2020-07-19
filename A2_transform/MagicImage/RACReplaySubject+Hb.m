#import "RACReplaySubject+Hb.h"
@implementation RACReplaySubject (Hb)
+ (BOOL)replaySubjectWithCapacityHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)initWithCapacityHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)sendNextHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sendCompletedHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)sendErrorHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
