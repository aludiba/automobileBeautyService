#import "BKMIBaseTabBarVC+-Deletecomments.h"
@implementation BKMIBaseTabBarVC (-Deletecomments)
+ (BOOL)viewDidLoad-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)BKinitWithChildController-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
