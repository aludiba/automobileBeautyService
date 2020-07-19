#import "BMBMGPUImageContrastFilterzo.h"
@implementation BMBMGPUImageContrastFilterzo
+ (BOOL)DZinit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)GFsetcontrast:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
