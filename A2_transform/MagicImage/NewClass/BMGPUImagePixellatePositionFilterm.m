#import "BMGPUImagePixellatePositionFilterm.h"
@implementation BMGPUImagePixellatePositionFilterm
+ (BOOL)Ainit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)xInitwithfragmentshaderfromstring:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)MSetinputsizeEAtindex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)lSetinputrotationCAtindex:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)xadjustAspectRatio:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)DForceprocessingatsize:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)RSetfractionalwidthofapixel:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)uSetaspectratio:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)KSetcenter:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)OSetradius:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
