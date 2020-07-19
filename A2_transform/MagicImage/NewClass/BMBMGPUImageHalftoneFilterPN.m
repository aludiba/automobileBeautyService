#import "BMBMGPUImageHalftoneFilterPN.h"
@implementation BMBMGPUImageHalftoneFilterPN
+ (BOOL)uLinit:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
