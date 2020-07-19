#import "BMBMGPUImageSwirlFilterqW.h"
@implementation BMBMGPUImageSwirlFilterqW
+ (BOOL)dGinitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)TYsetinputrotationqatindexbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)QQsetradiusbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)TFsetanglebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)AXsetcenterbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
