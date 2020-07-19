#import "RACReplaySubject+BmBm.h"
@implementation RACReplaySubject (BmBm)
+ (BOOL)replaySubjectWithCapacityBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)initWithCapacityBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sendCompletedBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sendErrorBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
