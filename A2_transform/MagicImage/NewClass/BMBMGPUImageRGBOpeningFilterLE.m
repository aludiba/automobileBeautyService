#import "BMBMGPUImageRGBOpeningFilterLe.h"
@implementation BMBMGPUImageRGBOpeningFilterLe
+ (BOOL)IRinitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)RCinitwithradiusbm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
