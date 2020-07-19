#import "GPUImageBrightnessFilter+BmBmBm.h"
@implementation GPUImageBrightnessFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setBrightnessBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
