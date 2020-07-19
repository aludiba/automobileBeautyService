#import "BMSDBaseProgressViewP+Bm.h"
@implementation BMSDBaseProgressViewP (Bm)
+ (BOOL)MInitwithframeBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ZSetprogressBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)iSetcenterprogresstextfWithattributesBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)odismissBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)ZprogressViewBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
