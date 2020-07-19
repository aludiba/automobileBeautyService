#import "BMGPUImageBuffera+BmBm.h"
@implementation BMGPUImageBuffera (BmBm)
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)udeallocBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)UNewframereadyattimeAAtindexBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)SRendertotexturewithverticesnTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)TSetbuffersizeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
