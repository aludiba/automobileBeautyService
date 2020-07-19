#import "-deleteCommentsGPUImageZoomBlurFilteru.h"
@implementation -deleteCommentsGPUImageZoomBlurFilteru
+ (BOOL)Hinit:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)ISetinputrotationPAtindex:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)wSetblursize:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)zSetblurcenter:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
