#import "BMGPUImageVignetteFilterb+BmBm.h"
@implementation BMGPUImageVignetteFilterb (BmBm)
+ (BOOL)winitBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)BSetvignettecenterBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)XSetvignettecolorBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)xSetvignettestartBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)WSetvignetteendBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
