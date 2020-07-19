#import "BMGPUImageRGBFiltern+Bm.h"
@implementation BMGPUImageRGBFiltern (Bm)
+ (BOOL)iInitbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)vSetredbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)NSetgreenbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)iSetbluebmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
