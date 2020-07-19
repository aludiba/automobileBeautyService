#import "BMGPUImageGammaFilterm.h"
@implementation BMGPUImageGammaFilterm
+ (BOOL)SInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)eSetgammabm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
