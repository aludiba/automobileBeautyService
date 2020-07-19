#import "BMGPUImagePixellateFilterc.h"
@implementation BMGPUImagePixellateFilterc
+ (BOOL)ginit:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)QInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)kadjustAspectRatio:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)kSetinputrotationPAtindex:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)NForceprocessingatsize:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)VSetinputsizeXAtindex:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ISetfractionalwidthofapixel:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)kSetaspectratio:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
