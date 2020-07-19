#import "NSObject+YYAddBm.h"
@implementation NSObject (YYAddBm)
+ (BOOL)performSelectorWithArgsBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)performSelectorWithArgsAfterdelayBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)performSelectorWithArgsOnMainThreadWaituntildoneBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)performSelectorWithArgsOnthreadWaituntildoneBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)performSelectorWithArgsInBackgroundBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)getReturnFromInvWithsigBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setInvWithsigAndargsBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)performSelectorAfterdelayBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)swizzleInstanceMethodWithBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)swizzleClassMethodWithBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setAssociateValueWithkeyBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setAssociateWeakValueWithkeyBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)removeAssociatedValuesBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)getAssociatedValueForKeyBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)classNameBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)classNameBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)deepCopyBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)deepCopyWithArchiverUnarchiverBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
