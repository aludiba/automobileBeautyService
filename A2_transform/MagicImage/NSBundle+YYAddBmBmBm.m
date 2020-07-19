#import "NSBundle+YYAddBmBmBm.h"
@implementation NSBundle (YYAddBmBmBm)
+ (BOOL)preferredScalesBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pathForScaledResourceOftypeBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
