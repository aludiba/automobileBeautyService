#import "BMTOCropScrollViewe.h"
@implementation BMTOCropScrollViewe
+ (BOOL)YTouchesbeganjWithevent:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)OTouchesendedhWithevent:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)HTouchescancelledSWithevent:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
