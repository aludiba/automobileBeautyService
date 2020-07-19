#import "-deleteCommentsGPUImageRGBFilterx.h"
@implementation -deleteCommentsGPUImageRGBFilterx
+ (BOOL)Vinit:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)RSetred:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)GSetgreen:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)ZSetblue:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
