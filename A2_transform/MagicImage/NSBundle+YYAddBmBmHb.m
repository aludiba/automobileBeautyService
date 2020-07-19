#import "NSBundle+YYAddBmBmHb.h"
@implementation NSBundle (YYAddBmBmHb)
+ (BOOL)preferredScalesBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)pathForScaledResourceOftypeBmBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
