#import "BMGPUImageHueBlendFilterS.h"
@implementation BMGPUImageHueBlendFilterS
+ (BOOL)tinit:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
