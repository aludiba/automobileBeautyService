#import "BMTOCropOverlayViewK.h"
@implementation BMTOCropOverlayViewK
+ (BOOL)gInitwithframe:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)usetup:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)MSetframe:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)FdidMoveToSuperview:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)AlayoutLines:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)XSetgridhiddendAnimated:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)BSetdisplayhorizontalgridlines:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)CSetdisplayverticalgridlines:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)ISetgridhidden:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)bcreateNewLineView:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
