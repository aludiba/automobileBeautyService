#import "-deleteCommentsGPUImageRGBFilters.h"
@implementation -deleteCommentsGPUImageRGBFilters
+ (BOOL)linit:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)GSetred:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)HSetgreen:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)aSetblue:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}

@end
