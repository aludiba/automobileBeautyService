#import "NSBundle+YYAddBmBmBmHb.h"
@implementation NSBundle (YYAddBmBmBmHb)
+ (BOOL)preferredScalesBmBmBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)pathForScaledResourceOftypeBmBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryBmBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
