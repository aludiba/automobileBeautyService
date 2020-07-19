#import "BMGPUImageAverageColori.h"
@implementation BMGPUImageAverageColori
+ (BOOL)LInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)iDeallocbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)rRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)KSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)aExtractaveragecoloratframetimebm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
