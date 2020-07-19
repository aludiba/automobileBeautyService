#import "BMTOCropScrollViewS+BmHb.h"
@implementation BMTOCropScrollViewS (BmHb)
+ (BOOL)UTouchesbeganwitheventbmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)pTouchesendedwitheventbmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)HTouchescancelledwitheventbmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
