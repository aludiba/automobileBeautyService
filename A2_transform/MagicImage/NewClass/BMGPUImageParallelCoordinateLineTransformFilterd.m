#import "BMGPUImageParallelCoordinateLineTransformFilterd.h"
@implementation BMGPUImageParallelCoordinateLineTransformFilterd
+ (BOOL)CInitbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ZDeallocbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)BInitializeattributesbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)YGeneratelinecoordinatesbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)iNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
