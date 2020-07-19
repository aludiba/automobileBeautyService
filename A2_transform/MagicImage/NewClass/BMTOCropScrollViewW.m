#import "BMTOCropScrollViewW.h"
@implementation BMTOCropScrollViewW
+ (BOOL)OTouchesbeganwitheventbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)pTouchesendedwitheventbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)vTouchescancelledwitheventbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
