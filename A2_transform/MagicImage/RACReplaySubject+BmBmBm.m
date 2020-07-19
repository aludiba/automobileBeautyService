#import "RACReplaySubject+BmBmBm.h"
@implementation RACReplaySubject (BmBmBm)
+ (BOOL)replaySubjectWithCapacityBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initWithCapacityBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sendNextBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sendCompletedBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sendErrorBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
