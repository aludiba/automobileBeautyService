#import "TOCropScrollView+Bm.h"
@implementation TOCropScrollView (Bm)
+ (BOOL)touchesBeganWitheventBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)touchesEndedWitheventBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)touchesCancelledWitheventBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
