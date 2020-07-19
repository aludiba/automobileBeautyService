#import "BMGPUImageSharpenFilterZ.h"
@implementation BMGPUImageSharpenFilterZ
+ (BOOL)Qinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)cSetupfilterforsize:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)tSetsharpness:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
