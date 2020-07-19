#import "BMGPUImageRGBOpeningFilterL+BmBm.h"
@implementation BMGPUImageRGBOpeningFilterL (BmBm)
+ (BOOL)RinitBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)CInitwithradiusBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
