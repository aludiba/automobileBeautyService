#import "BMGPUImageSharpenFilterY.h"
@implementation BMGPUImageSharpenFilterY
+ (BOOL)vinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)GSetupfilterforsize:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)vSetsharpness:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
