#import "RACBehaviorSubject+Bm.h"
@implementation RACBehaviorSubject (Bm)
+ (BOOL)behaviorSubjectWithDefaultValueBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
