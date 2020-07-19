#import "BMGPUImageClosingFilterV+Bm.h"
@implementation BMGPUImageClosingFilterV (Bm)
+ (BOOL)QInitbmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)GInitwithradiusbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)nSetverticaltexelspacingbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)nSethorizontaltexelspacingbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
