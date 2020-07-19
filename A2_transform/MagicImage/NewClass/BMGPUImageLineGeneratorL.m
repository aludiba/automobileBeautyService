#import "BMGPUImageLineGeneratorL.h"
@implementation BMGPUImageLineGeneratorL
+ (BOOL)VInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)RDeallocbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)dGeneratelinecoordinatesbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)GRenderlinesfromarraycountframetimebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)FRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)iSetlinewidthbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ySetlinecolorredgreenbluebm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
