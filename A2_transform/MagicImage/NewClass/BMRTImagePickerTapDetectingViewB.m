#import "BMRTImagePickerTapDetectingViewB.h"
@implementation BMRTImagePickerTapDetectingViewB
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)JInitwithframe:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)vTouchesendedAWithevent:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ZHandlesingletap:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)YHandledoubletap:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)xHandletripletap:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
