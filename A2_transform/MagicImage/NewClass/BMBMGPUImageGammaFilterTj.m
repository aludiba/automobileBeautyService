#import "BMBMGPUImageGammaFilterTj.h"
@implementation BMBMGPUImageGammaFilterTj
+ (BOOL)eRinit:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)MSsetgamma:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
