#import "BMGPUImageHistogramFiltery.h"
@implementation BMGPUImageHistogramFiltery
+ (BOOL)SInitwithhistogramtypebm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ZInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)rDeallocbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)LSizeoffbobm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)BNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)WOutputframesizebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)MSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)DSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
