#import "hbTOCropScrollViewr.h"
@implementation hbTOCropScrollViewr
+ (BOOL)WTouchesbeganOWithevent:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)NTouchesendedwWithevent:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)zTouchescancelledcWithevent:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
