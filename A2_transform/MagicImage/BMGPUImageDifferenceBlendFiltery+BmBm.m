#import "BMGPUImageDifferenceBlendFiltery+BmBm.h"
@implementation BMGPUImageDifferenceBlendFiltery (BmBm)
+ (BOOL)LinitBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
