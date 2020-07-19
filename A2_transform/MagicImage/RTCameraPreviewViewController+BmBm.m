#import "RTCameraPreviewViewController+BmBm.h"
@implementation RTCameraPreviewViewController (BmBm)
+ (BOOL)initWithImageBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)viewWillAppearBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)didReceiveMemoryWarningBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)viewForZoomingInScrollViewBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
