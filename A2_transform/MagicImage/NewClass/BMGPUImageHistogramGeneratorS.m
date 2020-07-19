#import "BMGPUImageHistogramGeneratorS.h"
@implementation BMGPUImageHistogramGeneratorS
+ (BOOL)rInitbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)CSetbackgroundcolorredgreenbluealphabm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
