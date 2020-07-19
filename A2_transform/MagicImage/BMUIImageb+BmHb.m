#import "BMUIImageb+BmHb.h"
@implementation BMUIImageb (BmHb)
+ (BOOL)skeyboardLeftImageBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)akeyboardRightImageBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)vkeyboardUpImageBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)vkeyboardDownImageBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)ckeyboardPreviousImageBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)jkeyboardNextImageBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
