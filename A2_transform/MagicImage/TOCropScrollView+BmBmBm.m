#import "TOCropScrollView+BmBmBm.h"
@implementation TOCropScrollView (BmBmBm)
+ (BOOL)touchesBeganWitheventBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)touchesEndedWitheventBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)touchesCancelledWitheventBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
