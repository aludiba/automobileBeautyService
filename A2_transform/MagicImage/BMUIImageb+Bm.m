#import "BMUIImageb+Bm.h"
@implementation BMUIImageb (Bm)
+ (BOOL)skeyboardLeftImageBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)akeyboardRightImageBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)vkeyboardUpImageBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)vkeyboardDownImageBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ckeyboardPreviousImageBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)jkeyboardNextImageBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
