#import "BMGPUImageChromaKeyFilteru.h"
@implementation BMGPUImageChromaKeyFilteru
+ (BOOL)winit:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)gSetcolortoreplaceredwGreenrBlue:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)ASetthresholdsensitivity:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)TSetsmoothing:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
