#import "BMUIViewP.h"
@implementation BMUIViewP
+ (BOOL)corigin:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)cSetorigin:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)Dsize:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)RSetsize:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)rbottomRight:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)FbottomLeft:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)rtopRight:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lheight:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)NSetheight:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)twidth:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)QSetwidth:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Stop:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)wSettop:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rleft:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)BSetleft:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)Obottom:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)ESetbottom:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)Fright:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LSetright:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dMoveby:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)gScaleby:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)wFitinsize:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)nconvertViewToImage:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
