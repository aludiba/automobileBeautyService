#import "BMGPUImageRGBErosionFilterI.h"
@implementation BMGPUImageRGBErosionFilterI
+ (BOOL)MInitwithradius:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
