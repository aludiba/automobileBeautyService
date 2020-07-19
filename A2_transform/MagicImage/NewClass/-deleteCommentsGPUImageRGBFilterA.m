#import "-deleteCommentsGPUImageRGBFilterA.h"
@implementation -deleteCommentsGPUImageRGBFilterA
+ (BOOL)yinit:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)hSetred:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)dSetgreen:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)wSetblue:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}

@end
