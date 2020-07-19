#import "BMTOCropScrollViewe+Bm.h"
@implementation BMTOCropScrollViewe (Bm)
+ (BOOL)YTouchesbeganjWitheventBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)OTouchesendedhWitheventBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)HTouchescancelledSWitheventBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
