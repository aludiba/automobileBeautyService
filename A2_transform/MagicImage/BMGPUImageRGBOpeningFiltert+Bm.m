#import "BMGPUImageRGBOpeningFiltert+Bm.h"
@implementation BMGPUImageRGBOpeningFiltert (Bm)
+ (BOOL)TinitBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)DInitwithradiusBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
