#import "BMGPUImageVignetteFilterK.h"
@implementation BMGPUImageVignetteFilterK
+ (BOOL)PInitbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)RSetvignettecenterbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ISetvignettecolorbmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)rSetvignettestartbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)XSetvignetteendbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
