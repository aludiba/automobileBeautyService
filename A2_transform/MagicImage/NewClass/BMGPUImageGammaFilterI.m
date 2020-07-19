#import "BMGPUImageGammaFilterI.h"
@implementation BMGPUImageGammaFilterI
+ (BOOL)jInitbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sSetgammabm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
