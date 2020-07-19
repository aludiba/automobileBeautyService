#import "BMNSArrayG.h"
@implementation BMNSArrayG
+ (BOOL)ysortedArrayByTag:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)gsortedArrayByPosition:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
