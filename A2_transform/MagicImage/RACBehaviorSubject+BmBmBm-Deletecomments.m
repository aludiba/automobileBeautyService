#import "RACBehaviorSubject+BmBmBm-Deletecomments.h"
@implementation RACBehaviorSubject (BmBmBm-Deletecomments)
+ (BOOL)behaviorSubjectWithDefaultValueBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)subscribeBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)sendNextBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
