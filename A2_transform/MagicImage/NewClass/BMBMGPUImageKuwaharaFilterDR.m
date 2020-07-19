#import "BMBMGPUImageKuwaharaFilterDR.h"
@implementation BMBMGPUImageKuwaharaFilterDR
+ (BOOL)IUinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)UZsetradius:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
