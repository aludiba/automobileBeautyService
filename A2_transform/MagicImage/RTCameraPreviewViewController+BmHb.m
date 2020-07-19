#import "RTCameraPreviewViewController+BmHb.h"
@implementation RTCameraPreviewViewController (BmHb)
+ (BOOL)initWithImageBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)viewWillAppearBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)didReceiveMemoryWarningBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)viewForZoomingInScrollViewBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
