#import "GPUImageBrightnessFilter+Bm.h"
@implementation GPUImageBrightnessFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setBrightnessBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
