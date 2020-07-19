#import "BMMASViewAttributel+BmHb.h"
@implementation BMMASViewAttributel (BmHb)
+ (BOOL)lInitwithviewlayoutattributebmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)cInitwithviewitemlayoutattributebmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)YIssizeattributebmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)DIsequalbmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)PHashbmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
