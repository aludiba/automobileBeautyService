#import "BMGPUImageRGBOpeningFilterL+Bm.h"
@implementation BMGPUImageRGBOpeningFilterL (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)CInitwithradiusBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
