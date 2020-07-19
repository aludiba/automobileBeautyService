#import "BMGPUImageLookupFilterp.h"
@implementation BMGPUImageLookupFilterp
+ (BOOL)finit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)jSetintensity:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
