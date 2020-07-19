#import "BMBMGPUImageRGBFilterzk.h"
@implementation BMBMGPUImageRGBFilterzk
+ (BOOL)WPinit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)RXsetred:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)KDsetgreen:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)oMsetblue:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
