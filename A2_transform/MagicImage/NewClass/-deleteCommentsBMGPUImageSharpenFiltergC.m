#import "-deleteCommentsBMGPUImageSharpenFiltergC.h"
@implementation -deleteCommentsBMGPUImageSharpenFiltergC
+ (BOOL)RPinitbm:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)PBsetupfilterforsizebm:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)hOsetsharpnessbm:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
