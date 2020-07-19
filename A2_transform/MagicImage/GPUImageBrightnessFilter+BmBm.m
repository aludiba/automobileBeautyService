#import "GPUImageBrightnessFilter+BmBm.h"
@implementation GPUImageBrightnessFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setBrightnessBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
