#import "BMGPUImageLookupFilterp+Bm.h"
@implementation BMGPUImageLookupFilterp (Bm)
+ (BOOL)finitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)jSetintensityBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
