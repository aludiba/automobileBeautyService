#import "BMUIImageb+BmBm.h"
@implementation BMUIImageb (BmBm)
+ (BOOL)skeyboardLeftImageBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)akeyboardRightImageBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)vkeyboardUpImageBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)vkeyboardDownImageBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ckeyboardPreviousImageBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)jkeyboardNextImageBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
