#import "BMTOCropScrollViewS.h"
@implementation BMTOCropScrollViewS
+ (BOOL)UTouchesbeganwitheventbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)pTouchesendedwitheventbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)HTouchescancelledwitheventbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
