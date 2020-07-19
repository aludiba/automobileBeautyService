#import "BMTOCropScrollViewM+BmBmHb.h"
@implementation BMTOCropScrollViewM (BmBmHb)
+ (BOOL)GTouchesbeganWWitheventBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)RTouchesendedQWitheventBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
