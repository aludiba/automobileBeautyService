#import "RTImagePickerNavigationController+BmBm.h"
@implementation RTImagePickerNavigationController (BmBm)
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)didReceiveMemoryWarningBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setupToolBarViewBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
