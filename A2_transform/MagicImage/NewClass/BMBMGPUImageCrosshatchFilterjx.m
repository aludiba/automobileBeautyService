#import "BMBMGPUImageCrosshatchFilterjx.h"
@implementation BMBMGPUImageCrosshatchFilterjx
+ (BOOL)gFinit:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)QIsetcrosshatchspacing:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)LOsetlinewidth:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
