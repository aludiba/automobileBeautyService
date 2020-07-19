#import "BMBMGPUImageDarkenBlendFilterGK.h"
@implementation BMBMGPUImageDarkenBlendFilterGK
+ (BOOL)AFinit:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
