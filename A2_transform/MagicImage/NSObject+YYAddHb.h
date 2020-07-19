#import <Foundation/Foundation.h>
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

@interface NSObject (YYAddHb)
+ (BOOL)performSelectorWithArgsHb:(NSInteger)hb;
+ (BOOL)performSelectorWithArgsAfterdelayHb:(NSInteger)hb;
+ (BOOL)performSelectorWithArgsOnMainThreadWaituntildoneHb:(NSInteger)hb;
+ (BOOL)performSelectorWithArgsOnthreadWaituntildoneHb:(NSInteger)hb;
+ (BOOL)performSelectorWithArgsInBackgroundHb:(NSInteger)hb;
+ (BOOL)getReturnFromInvWithsigHb:(NSInteger)hb;
+ (BOOL)setInvWithsigAndargsHb:(NSInteger)hb;
+ (BOOL)performSelectorAfterdelayHb:(NSInteger)hb;
+ (BOOL)swizzleInstanceMethodWithHb:(NSInteger)hb;
+ (BOOL)swizzleClassMethodWithHb:(NSInteger)hb;
+ (BOOL)setAssociateValueWithkeyHb:(NSInteger)hb;
+ (BOOL)setAssociateWeakValueWithkeyHb:(NSInteger)hb;
+ (BOOL)removeAssociatedValuesHb:(NSInteger)hb;
+ (BOOL)getAssociatedValueForKeyHb:(NSInteger)hb;
+ (BOOL)classNameHb:(NSInteger)hb;
+ (BOOL)classNameHb:(NSInteger)hb;
+ (BOOL)deepCopyHb:(NSInteger)hb;
+ (BOOL)deepCopyWithArchiverUnarchiverHb:(NSInteger)hb;

@end
