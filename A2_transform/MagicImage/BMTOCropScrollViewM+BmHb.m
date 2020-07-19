#import "BMTOCropScrollViewM+BmHb.h"
@implementation BMTOCropScrollViewM (BmHb)
+ (BOOL)GTouchesbeganWWitheventBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)RTouchesendedQWitheventBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
