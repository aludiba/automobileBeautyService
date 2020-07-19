#import "BMBMBMGPUImageVignetteFilterbEB.h"
@implementation BMBMBMGPUImageVignetteFilterbEB
+ (BOOL)bDwinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)BAbsetvignettecenter:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)GOxsetvignettecolor:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OYxsetvignettestart:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)MDwsetvignetteend:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
