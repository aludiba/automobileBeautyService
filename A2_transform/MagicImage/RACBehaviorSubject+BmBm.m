#import "RACBehaviorSubject+BmBm.h"
@implementation RACBehaviorSubject (BmBm)
+ (BOOL)behaviorSubjectWithDefaultValueBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
