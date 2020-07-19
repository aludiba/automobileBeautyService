#import "MASViewAttribute+BmHb.h"
@implementation MASViewAttribute (BmHb)
+ (BOOL)initWithViewLayoutattributeBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)isSizeAttributeBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)isEqualBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)hashBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
