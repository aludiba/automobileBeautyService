#import "GPUImageVignetteFilter+BmBmBm.h"
@implementation GPUImageVignetteFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setVignetteCenterBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setVignetteColorBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setVignetteStartBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setVignetteEndBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
