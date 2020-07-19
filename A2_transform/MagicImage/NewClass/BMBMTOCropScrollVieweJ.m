#import "BMBMTOCropScrollVieweJ.h"
@implementation BMBMTOCropScrollVieweJ
+ (BOOL)fYtouchesbeganjwithevent:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ROtouchesendedhwithevent:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)vHtouchescancelledswithevent:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
