#import "BMGPUImageBufferv+Bm.h"
@implementation BMGPUImageBufferv (Bm)
+ (BOOL)VinitBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)WdeallocBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GNewframereadyattimefAtindexBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)DRendertotexturewithverticeswTexturecoordinatesBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)fSetbuffersizeBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
