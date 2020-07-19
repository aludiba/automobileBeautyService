#import "BMBMUIImagebm.h"
@implementation BMBMUIImagebm
+ (BOOL)hSkeyboardleftimagebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)TAkeyboardrightimagebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rVkeyboardupimagebm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)RVkeyboarddownimagebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)XCkeyboardpreviousimagebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)BJkeyboardnextimagebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
