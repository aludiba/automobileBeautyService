#import "MASViewAttribute+BmBm.h"
@implementation MASViewAttribute (BmBm)
+ (BOOL)initWithViewLayoutattributeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)isSizeAttributeBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)hashBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
