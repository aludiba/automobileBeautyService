#import "BMGPUImageHistogramFilterp.h"
@implementation BMGPUImageHistogramFilterp
+ (BOOL)xInitwithhistogramtypebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ZInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ZInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)ODeallocbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)MSizeoffbobm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)kNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)tOutputframesizebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ASetinputsizeatindexbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)LSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)fRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
