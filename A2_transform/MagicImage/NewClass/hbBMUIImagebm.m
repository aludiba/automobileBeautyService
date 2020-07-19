#import "hbBMUIImagebm.h"
@implementation hbBMUIImagebm
+ (BOOL)jSkeyboardleftimagebm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)RAkeyboardrightimagebm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)TVkeyboardupimagebm:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)OVkeyboarddownimagebm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)YCkeyboardpreviousimagebm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)tJkeyboardnextimagebm:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
