#import "BMBMGPUImageSwirlFilterDS.h"
@implementation BMBMGPUImageSwirlFilterDS
+ (BOOL)WOinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ANsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ABsetradiusbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)UXsetanglebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)uGsetcenterbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
