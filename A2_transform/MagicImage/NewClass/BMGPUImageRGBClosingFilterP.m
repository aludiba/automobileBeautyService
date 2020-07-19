#import "BMGPUImageRGBClosingFilterP.h"
@implementation BMGPUImageRGBClosingFilterP
+ (BOOL)CInitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)YInitwithradiusbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
