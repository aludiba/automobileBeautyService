#import "RACEvent+Bm.h"
@implementation RACEvent (Bm)
+ (BOOL)isFinishedBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)errorBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)valueBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)completedEventBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)eventWithErrorBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)eventWithValueBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initWithEventTypeObjectBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)hashBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
