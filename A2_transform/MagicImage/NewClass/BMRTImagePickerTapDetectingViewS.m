#import "BMRTImagePickerTapDetectingViewS.h"
@implementation BMRTImagePickerTapDetectingViewS
+ (BOOL)jinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VInitwithframe:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)xTouchesendedtWithevent:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)jHandlesingletap:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)AHandledoubletap:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)SHandletripletap:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
