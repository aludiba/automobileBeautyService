#import "RACEvent+BmBm.h"
@implementation RACEvent (BmBm)
+ (BOOL)isFinishedBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)errorBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)valueBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)completedEventBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)eventWithErrorBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)eventWithValueBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initWithEventTypeObjectBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)hashBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
