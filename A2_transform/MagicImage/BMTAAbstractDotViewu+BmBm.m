#import "BMTAAbstractDotViewu+BmBm.h"
@implementation BMTAAbstractDotViewu (BmBm)
+ (BOOL)oinitBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sChangeactivitystateBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
