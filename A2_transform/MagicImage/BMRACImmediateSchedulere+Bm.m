#import "BMRACImmediateSchedulere+Bm.h"
@implementation BMRACImmediateSchedulere (Bm)
+ (BOOL)YinitBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)YScheduleBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dAfterLScheduleBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)nAfterQRepeatingeveryqWithleewayMScheduleBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ISchedulerecursiveblockBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
