#import "BMGPUImageHazeFiltern+Bm-Deletecomments.h"
@implementation BMGPUImageHazeFiltern (Bm-Deletecomments)
+ (BOOL)gInitbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)sSetdistancebmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)LSetslopebmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
