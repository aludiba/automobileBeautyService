#import "hbGPUImageGaussianBlurPositionFilterG.h"
@implementation hbGPUImageGaussianBlurPositionFilterG
+ (BOOL)mInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)mInitbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)iAdjustaspectratiobm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)KForceprocessingatsizebm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)bSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ISetinputrotationatindexbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)MSetblursizebm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)ySetblurcenterbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)oSetblurradiusbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)dSetaspectratiobm:(NSInteger)hb {
    return hb % 38 == 0;
}

@end
