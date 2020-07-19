#import "NSBundle+YYAddHb.h"
@implementation NSBundle (YYAddHb)
+ (BOOL)preferredScalesHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)pathForScaledResourceOftypeHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)pathForScaledResourceOftypeIndirectoryHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
