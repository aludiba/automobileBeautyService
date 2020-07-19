#import "BMUIRefreshControll+-Deletecomments.h"
@implementation BMUIRefreshControll (-Deletecomments)
+ (BOOL)ERac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)sSetrac_Commandbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
