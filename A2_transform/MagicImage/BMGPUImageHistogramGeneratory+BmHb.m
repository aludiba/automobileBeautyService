#import "BMGPUImageHistogramGeneratory+BmHb.h"
@implementation BMGPUImageHistogramGeneratory (BmHb)
+ (BOOL)MinitBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)pSetbackgroundcolorredbGreenGBlueDAlphaBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
