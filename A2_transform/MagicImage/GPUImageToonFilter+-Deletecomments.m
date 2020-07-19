#import "GPUImageToonFilter+-Deletecomments.h"
@implementation GPUImageToonFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)setThreshold-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)setQuantizationLevels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
