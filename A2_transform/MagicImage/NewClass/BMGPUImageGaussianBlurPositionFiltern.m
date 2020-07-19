#import "BMGPUImageGaussianBlurPositionFiltern.h"
@implementation BMGPUImageGaussianBlurPositionFiltern
+ (BOOL)iInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)wInitbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)gAdjustaspectratiobm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)sForceprocessingatsizebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)fSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)pSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sSetblursizebm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)GSetblurcenterbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)mSetblurradiusbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)rSetaspectratiobm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
