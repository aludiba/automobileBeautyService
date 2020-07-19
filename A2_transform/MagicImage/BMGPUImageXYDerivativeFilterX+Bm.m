#import "BMGPUImageXYDerivativeFilterX+Bm.h"
@implementation BMGPUImageXYDerivativeFilterX (Bm)
+ (BOOL)AinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
