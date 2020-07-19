#import "BMBMGPUImageLuminosityIj.h"
@implementation BMBMGPUImageLuminosityIj
+ (BOOL)eRinitbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)BWinitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)vSextractluminosityatframetimebm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
