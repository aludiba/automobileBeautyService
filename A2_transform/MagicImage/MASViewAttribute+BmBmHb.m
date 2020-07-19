#import "MASViewAttribute+BmBmHb.h"
@implementation MASViewAttribute (BmBmHb)
+ (BOOL)initWithViewLayoutattributeBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeBmBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)isSizeAttributeBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)isEqualBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)hashBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
