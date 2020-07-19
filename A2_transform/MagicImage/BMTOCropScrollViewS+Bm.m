#import "BMTOCropScrollViewS+Bm.h"
@implementation BMTOCropScrollViewS (Bm)
+ (BOOL)UTouchesbeganwitheventbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pTouchesendedwitheventbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)HTouchescancelledwitheventbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
