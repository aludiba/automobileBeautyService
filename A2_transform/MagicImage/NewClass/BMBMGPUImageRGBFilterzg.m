#import "BMBMGPUImageRGBFilterzg.h"
@implementation BMBMGPUImageRGBFilterzg
+ (BOOL)ZPinit:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)ZXsetred:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)dDsetgreen:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hMsetblue:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
