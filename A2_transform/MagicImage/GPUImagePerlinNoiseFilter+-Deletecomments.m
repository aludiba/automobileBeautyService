#import "GPUImagePerlinNoiseFilter+-Deletecomments.h"
@implementation GPUImagePerlinNoiseFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)setScale-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)setColorStart-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setColorFinish-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
