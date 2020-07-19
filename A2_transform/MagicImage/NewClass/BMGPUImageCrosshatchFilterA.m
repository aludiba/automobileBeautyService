#import "BMGPUImageCrosshatchFilterA.h"
@implementation BMGPUImageCrosshatchFilterA
+ (BOOL)Xinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)LSetcrosshatchspacing:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)LSetlinewidth:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
