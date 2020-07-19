#import "BMNSArrayn.h"
@implementation BMNSArrayn
+ (BOOL)fsortedArrayByTag:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ysortedArrayByPosition:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
