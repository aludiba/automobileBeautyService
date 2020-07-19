#import "GPUImageVignetteFilter+Bm.h"
@implementation GPUImageVignetteFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setVignetteCenterBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setVignetteColorBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setVignetteStartBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setVignetteEndBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
