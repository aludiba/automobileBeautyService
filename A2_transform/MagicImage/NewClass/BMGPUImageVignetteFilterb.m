#import "BMGPUImageVignetteFilterb.h"
@implementation BMGPUImageVignetteFilterb
+ (BOOL)winit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)BSetvignettecenter:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XSetvignettecolor:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)xSetvignettestart:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)WSetvignetteend:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
