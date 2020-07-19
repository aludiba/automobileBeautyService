#import "BMGPUImageOpacityFilterC+Bm.h"
@implementation BMGPUImageOpacityFilterC (Bm)
+ (BOOL)ninitBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)TSetopacityBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
