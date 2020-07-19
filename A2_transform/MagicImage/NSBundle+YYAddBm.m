#import "NSBundle+YYAddBm.h"
@implementation NSBundle (YYAddBm)
+ (BOOL)preferredScalesBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pathForScaledResourceOftypeBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
