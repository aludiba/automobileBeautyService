#import "BMGPUImageCrosshatchFilterj.h"
@implementation BMGPUImageCrosshatchFilterj
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)iSetcrosshatchspacing:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)oSetlinewidth:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
