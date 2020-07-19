#import "GPUImageVignetteFilter+BmBm.h"
@implementation GPUImageVignetteFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setVignetteCenterBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setVignetteColorBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setVignetteStartBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setVignetteEndBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
