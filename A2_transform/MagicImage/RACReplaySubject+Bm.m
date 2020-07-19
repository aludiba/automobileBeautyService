#import "RACReplaySubject+Bm.h"
@implementation RACReplaySubject (Bm)
+ (BOOL)replaySubjectWithCapacityBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initWithCapacityBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sendCompletedBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sendErrorBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
