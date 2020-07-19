#import "BMSDBaseProgressViewP.h"
@implementation BMSDBaseProgressViewP
+ (BOOL)MInitwithframe:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ZSetprogress:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)iSetcenterprogresstextfWithattributes:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)odismiss:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ZprogressView:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
