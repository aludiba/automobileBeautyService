#import "BMTAAbstractDotViewc+Bm.h"
@implementation BMTAAbstractDotViewc (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)BChangeactivitystateBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
