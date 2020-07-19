#import "hbBMGPUImageSwirlFilterPD.h"
@implementation hbBMGPUImageSwirlFilterPD
+ (BOOL)vVinitbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)yVsetinputrotationxatindexbm:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)rSsetradiusbm:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)tHsetanglebm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)ZHsetcenterbm:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
