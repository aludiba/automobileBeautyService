#import "BMGPUImageVignetteFilterb+Bm.h"
@implementation BMGPUImageVignetteFilterb (Bm)
+ (BOOL)winitBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)BSetvignettecenterBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)XSetvignettecolorBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)xSetvignettestartBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WSetvignetteendBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
