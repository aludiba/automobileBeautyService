#import "BMGPUImageBuffera+Bm.h"
@implementation BMGPUImageBuffera (Bm)
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)udeallocBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)UNewframereadyattimeAAtindexBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)SRendertotexturewithverticesnTexturecoordinatesBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)TSetbuffersizeBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
