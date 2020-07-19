#import "BMGPUImageDarkenBlendFiltery+Bm.h"
@implementation BMGPUImageDarkenBlendFiltery (Bm)
+ (BOOL)PinitBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
