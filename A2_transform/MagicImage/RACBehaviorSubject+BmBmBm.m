#import "RACBehaviorSubject+BmBmBm.h"
@implementation RACBehaviorSubject (BmBmBm)
+ (BOOL)behaviorSubjectWithDefaultValueBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)sendNextBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
