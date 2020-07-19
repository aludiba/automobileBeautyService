#import "BMGPUImageHistogramGeneratorX.h"
@implementation BMGPUImageHistogramGeneratorX
+ (BOOL)XInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)fSetbackgroundcolorredgreenbluealphabm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
