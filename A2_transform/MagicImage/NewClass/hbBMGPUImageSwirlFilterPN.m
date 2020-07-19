#import "hbBMGPUImageSwirlFilterPN.h"
@implementation hbBMGPUImageSwirlFilterPN
+ (BOOL)LVinitbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)CVsetinputrotationxatindexbm:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)HSsetradiusbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)yHsetanglebm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)WHsetcenterbm:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
