#import "GPUImageRGBClosingFilter+BmBmBm.h"
@implementation GPUImageRGBClosingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
