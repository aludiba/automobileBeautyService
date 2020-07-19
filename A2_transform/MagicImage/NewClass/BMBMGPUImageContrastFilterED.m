#import "BMBMGPUImageContrastFilterED.h"
@implementation BMBMGPUImageContrastFilterED
+ (BOOL)FBinit:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)YEsetcontrast:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
