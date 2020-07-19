#import "BMBMGPUImageRGBOpeningFilterfT.h"
@implementation BMBMGPUImageRGBOpeningFilterfT
+ (BOOL)IVinitbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PNinitwithradiusbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
