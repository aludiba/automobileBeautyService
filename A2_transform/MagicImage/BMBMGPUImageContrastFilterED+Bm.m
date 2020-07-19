#import "BMBMGPUImageContrastFilterED+Bm.h"
@implementation BMBMGPUImageContrastFilterED (Bm)
+ (BOOL)FBinitBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)YEsetcontrastBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
