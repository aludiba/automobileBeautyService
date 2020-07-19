#import "BMGPUImageRGBClosingFiltert.h"
@implementation BMGPUImageRGBClosingFiltert
+ (BOOL)uinit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nInitwithradius:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
