#import "BMBMTOCropScrollViewSX.h"
@implementation BMBMTOCropScrollViewSX
+ (BOOL)AUtouchesbeganwitheventbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)OPtouchesendedwitheventbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)bHtouchescancelledwitheventbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
