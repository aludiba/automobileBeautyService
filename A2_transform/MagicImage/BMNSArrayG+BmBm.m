#import "BMNSArrayG+BmBm.h"
@implementation BMNSArrayG (BmBm)
+ (BOOL)ysortedArrayByTagBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)gsortedArrayByPositionBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
