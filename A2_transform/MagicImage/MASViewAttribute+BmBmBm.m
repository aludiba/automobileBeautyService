#import "MASViewAttribute+BmBmBm.h"
@implementation MASViewAttribute (BmBmBm)
+ (BOOL)initWithViewLayoutattributeBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)initWithViewItemLayoutattributeBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)isSizeAttributeBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)isEqualBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)hashBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
