#import "BMGPUImageHistogramGeneratory+Bm.h"
@implementation BMGPUImageHistogramGeneratory (Bm)
+ (BOOL)MinitBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)pSetbackgroundcolorredbGreenGBlueDAlphaBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
