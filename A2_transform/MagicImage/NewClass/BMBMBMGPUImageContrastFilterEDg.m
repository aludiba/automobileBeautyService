#import "BMBMBMGPUImageContrastFilterEDg.h"
@implementation BMBMBMGPUImageContrastFilterEDg
+ (BOOL)SFbinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)GYesetcontrast:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
