#import "GPUImageRGBClosingFilter+BmBm.h"
@implementation GPUImageRGBClosingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
