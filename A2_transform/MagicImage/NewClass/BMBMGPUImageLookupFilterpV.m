#import "BMBMGPUImageLookupFilterpV.h"
@implementation BMBMGPUImageLookupFilterpV
+ (BOOL)TFinit:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)CJsetintensity:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
