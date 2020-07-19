#import "BMBMGPUImageLookupFilterUA.h"
@implementation BMBMGPUImageLookupFilterUA
+ (BOOL)vNinit:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)sPsetintensity:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
