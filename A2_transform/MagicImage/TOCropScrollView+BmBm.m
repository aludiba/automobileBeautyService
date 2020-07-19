#import "TOCropScrollView+BmBm.h"
@implementation TOCropScrollView (BmBm)
+ (BOOL)touchesBeganWitheventBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)touchesEndedWitheventBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)touchesCancelledWitheventBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
