#import "BMGPUImageOpeningFilterX+Bm.h"
@implementation BMGPUImageOpeningFilterX (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)tInitwithradiusBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)qSetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)pSethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
