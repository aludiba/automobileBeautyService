#import "BMGPUImageErosionFiltert+Bm.h"
@implementation BMGPUImageErosionFiltert (Bm)
+ (BOOL)UInitwithradiusBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ainitBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
