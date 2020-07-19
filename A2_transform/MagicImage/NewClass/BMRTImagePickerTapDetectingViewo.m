#import "BMRTImagePickerTapDetectingViewo.h"
@implementation BMRTImagePickerTapDetectingViewo
+ (BOOL)aInitbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)GInitwithframebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)RTouchesendedwitheventbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)NHandlesingletapbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)mHandledoubletapbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)BHandletripletapbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
