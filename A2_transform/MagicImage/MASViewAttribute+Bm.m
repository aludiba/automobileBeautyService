#import "MASViewAttribute+Bm.h"
@implementation MASViewAttribute (Bm)
+ (BOOL)initWithViewLayoutattributeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)isSizeAttributeBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)hashBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
