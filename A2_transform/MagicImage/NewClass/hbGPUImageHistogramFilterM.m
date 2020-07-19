#import "hbGPUImageHistogramFilterM.h"
@implementation hbGPUImageHistogramFilterM
+ (BOOL)sInitwithhistogramtype:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)tinit:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)ninitializeSecondaryAttributes:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)Odealloc:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)isizeOfFBO:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)MNewframereadyattimeGAtindex:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)KoutputFrameSize:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)CSetinputsizeOAtindex:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)nSetinputrotationSAtindex:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)oRendertotexturewithverticescTexturecoordinates:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
