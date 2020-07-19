#import "BMBMGPUImageDivideBlendFilterBN.h"
@implementation BMBMGPUImageDivideBlendFilterBN
+ (BOOL)AQinit:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
