#import "GPUImageHighPassFilter+-Deletecomments.h"
@implementation GPUImageHighPassFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setFilterStrength-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)filterStrength-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
