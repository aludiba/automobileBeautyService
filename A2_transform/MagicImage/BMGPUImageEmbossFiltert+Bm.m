#import "BMGPUImageEmbossFiltert+Bm.h"
@implementation BMGPUImageEmbossFiltert (Bm)
+ (BOOL)einitBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)uSetintensityBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
