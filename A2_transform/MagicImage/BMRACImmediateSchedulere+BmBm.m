#import "BMRACImmediateSchedulere+BmBm.h"
@implementation BMRACImmediateSchedulere (BmBm)
+ (BOOL)YinitBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)YScheduleBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dAfterLScheduleBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)nAfterQRepeatingeveryqWithleewayMScheduleBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ISchedulerecursiveblockBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
