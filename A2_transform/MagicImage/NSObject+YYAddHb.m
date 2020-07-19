#import "NSObject+YYAddHb.h"
@implementation NSObject (YYAddHb)
+ (BOOL)performSelectorWithArgsHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)performSelectorWithArgsAfterdelayHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)performSelectorWithArgsOnMainThreadWaituntildoneHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)performSelectorWithArgsOnthreadWaituntildoneHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)performSelectorWithArgsInBackgroundHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)getReturnFromInvWithsigHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setInvWithsigAndargsHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)performSelectorAfterdelayHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)swizzleInstanceMethodWithHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)swizzleClassMethodWithHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setAssociateValueWithkeyHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setAssociateWeakValueWithkeyHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)removeAssociatedValuesHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)getAssociatedValueForKeyHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)classNameHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)classNameHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)deepCopyHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)deepCopyWithArchiverUnarchiverHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
