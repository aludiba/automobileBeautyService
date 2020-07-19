#import "BMGPUImageSwirlFilterD+Bm-Deletecomments.h"
@implementation BMGPUImageSwirlFilterD (Bm-Deletecomments)
+ (BOOL)oInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)nSetinputrotationatindexbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)bSetradiusbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)XSetanglebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)gSetcenterbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
