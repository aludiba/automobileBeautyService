#import "BMGPUImageSaturationFilterP.h"
@implementation BMGPUImageSaturationFilterP
+ (BOOL)zinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)PSetsaturation:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
