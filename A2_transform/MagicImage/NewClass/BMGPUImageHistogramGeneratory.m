#import "BMGPUImageHistogramGeneratory.h"
@implementation BMGPUImageHistogramGeneratory
+ (BOOL)Minit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)pSetbackgroundcolorredbGreenGBlueDAlpha:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
