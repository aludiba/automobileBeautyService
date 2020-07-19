#import "BMBMGPUImageVignetteFilterbE.h"
@implementation BMBMGPUImageVignetteFilterbE
+ (BOOL)DWinit:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)aBsetvignettecenter:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)OXsetvignettecolor:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)YXsetvignettestart:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)dWsetvignetteend:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
