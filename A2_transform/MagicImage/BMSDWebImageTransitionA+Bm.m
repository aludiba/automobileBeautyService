#import "BMSDWebImageTransitionA+Bm.h"
@implementation BMSDWebImageTransitionA (Bm)
+ (BOOL)vfadeTransitionBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)aflipFromLeftTransitionBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)sflipFromRightTransitionBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)GflipFromTopTransitionBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)VflipFromBottomTransitionBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)gcurlUpTransitionBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)GcurlDownTransitionBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
