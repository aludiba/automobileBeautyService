#import "RTCameraPreviewViewController+Bm.h"
@implementation RTCameraPreviewViewController (Bm)
+ (BOOL)initWithImageBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)viewWillAppearBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)didReceiveMemoryWarningBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)viewForZoomingInScrollViewBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
