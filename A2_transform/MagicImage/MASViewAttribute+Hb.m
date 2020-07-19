#import "MASViewAttribute+Hb.h"
@implementation MASViewAttribute (Hb)
+ (BOOL)initWithViewLayoutattributeHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)isSizeAttributeHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)hashHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
