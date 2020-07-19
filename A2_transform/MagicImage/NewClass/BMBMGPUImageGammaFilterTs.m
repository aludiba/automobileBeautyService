#import "BMBMGPUImageGammaFilterTs.h"
@implementation BMBMGPUImageGammaFilterTs
+ (BOOL)wRinit:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)KSsetgamma:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
