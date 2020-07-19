#import "RTImagePickerNavigationController+Bm.h"
@implementation RTImagePickerNavigationController (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)didReceiveMemoryWarningBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setupToolBarViewBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
