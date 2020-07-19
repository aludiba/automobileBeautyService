#import "BMBMBMUIImageLCE.h"
@implementation BMBMBMUIImageLCE
+ (BOOL)BHekeyboardleftimagebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yIrkeyboardrightimagebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)zHzkeyboardupimagebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)XLukeyboarddownimagebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mJmkeyboardpreviousimagebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)EPxkeyboardnextimagebm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
