#import "BMRTImagePickerTapDetectingImageViewk.h"
@implementation BMRTImagePickerTapDetectingImageViewk
+ (BOOL)rInitwithframebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)lInitwithimagebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)hInitwithimagehighlightedimagebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cTouchesendedwitheventbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)vHandlesingletapbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)MHandledoubletapbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)hHandletripletapbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
