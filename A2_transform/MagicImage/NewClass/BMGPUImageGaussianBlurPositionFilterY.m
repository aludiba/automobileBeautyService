#import "BMGPUImageGaussianBlurPositionFilterY.h"
@implementation BMGPUImageGaussianBlurPositionFilterY
+ (BOOL)TInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)WInitbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)EAdjustaspectratiobm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fForceprocessingatsizebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)BSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)CSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)WSetblursizebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)oSetblurcenterbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)pSetblurradiusbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)VSetaspectratiobm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
