#import "BMBMBMTOCropScrollViewMRT.h"
@implementation BMBMBMTOCropScrollViewMRT
+ (BOOL)cLgtouchesbeganwwithevent:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)UMrtouchesendedqwithevent:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)iThtouchescancellednwithevent:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
