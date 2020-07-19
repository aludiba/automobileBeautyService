#import "BMBMGPUImageHistogramGeneratorXY.h"
@implementation BMBMGPUImageHistogramGeneratorXY
+ (BOOL)pXinitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fFsetbackgroundcolorredgreenbluealphabm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
