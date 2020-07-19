#import "BMRTImagePickerTapDetectingImageViewU.h"
@implementation BMRTImagePickerTapDetectingImageViewU
+ (BOOL)EInitwithframe:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)SInitwithimage:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)yInitwithimagejHighlightedimage:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)FTouchesendedMWithevent:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)VHandlesingletap:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)hHandledoubletap:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)wHandletripletap:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
