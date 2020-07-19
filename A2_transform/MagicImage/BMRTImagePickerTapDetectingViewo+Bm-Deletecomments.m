#import "BMRTImagePickerTapDetectingViewo+Bm-Deletecomments.h"
@implementation BMRTImagePickerTapDetectingViewo (Bm-Deletecomments)
+ (BOOL)aInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)GInitwithframebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)RTouchesendedwitheventbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)NHandlesingletapbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)mHandledoubletapbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)BHandletripletapbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
