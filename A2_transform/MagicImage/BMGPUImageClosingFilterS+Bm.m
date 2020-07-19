#import "BMGPUImageClosingFilterS+Bm.h"
@implementation BMGPUImageClosingFilterS (Bm)
+ (BOOL)einitBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)RInitwithradiusBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ASetverticaltexelspacingBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)pSethorizontaltexelspacingBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
