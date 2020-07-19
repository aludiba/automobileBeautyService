#import "NSBundle+YYAddBmBm.h"
@implementation NSBundle (YYAddBmBm)
+ (BOOL)preferredScalesBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pathForScaledResourceOftypeBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
