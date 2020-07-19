#import "BMGPUImageHistogramFilterS.h"
@implementation BMGPUImageHistogramFilterS
+ (BOOL)SInitwithhistogramtype:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Ginit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)kinitializeSecondaryAttributes:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pdealloc:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)OsizeOfFBO:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)qNewframereadyattimeBAtindex:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)VoutputFrameSize:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)tSetinputsizeEAtindex:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ySetinputrotationsAtindex:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)LRendertotexturewithverticesATexturecoordinates:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
