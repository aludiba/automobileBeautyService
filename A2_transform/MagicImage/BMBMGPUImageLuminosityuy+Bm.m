#import "BMBMGPUImageLuminosityuy+Bm.h"
@implementation BMBMGPUImageLuminosityuy (Bm)
+ (BOOL)CDinitBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CYinitializesecondaryattributesBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nPextractluminosityatframetimeBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
