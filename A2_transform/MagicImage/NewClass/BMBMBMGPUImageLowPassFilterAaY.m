#import "BMBMBMGPUImageLowPassFilterAaY.h"
@implementation BMBMBMGPUImageLowPassFilterAaY
+ (BOOL)UPninit:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)yQosetfilterstrength:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)QQbfilterstrength:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)xLzaddtargetkattexturelocation:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
