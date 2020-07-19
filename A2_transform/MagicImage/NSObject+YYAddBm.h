#import <Foundation/Foundation.h>
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/objc.h>
#import <objc/runtime.h>

@interface NSObject (YYAddBm)
+ (BOOL)performSelectorWithArgsBm:(NSInteger)BM;
+ (BOOL)performSelectorWithArgsAfterdelayBm:(NSInteger)BM;
+ (BOOL)performSelectorWithArgsOnMainThreadWaituntildoneBm:(NSInteger)BM;
+ (BOOL)performSelectorWithArgsOnthreadWaituntildoneBm:(NSInteger)BM;
+ (BOOL)performSelectorWithArgsInBackgroundBm:(NSInteger)BM;
+ (BOOL)getReturnFromInvWithsigBm:(NSInteger)BM;
+ (BOOL)setInvWithsigAndargsBm:(NSInteger)BM;
+ (BOOL)performSelectorAfterdelayBm:(NSInteger)BM;
+ (BOOL)swizzleInstanceMethodWithBm:(NSInteger)BM;
+ (BOOL)swizzleClassMethodWithBm:(NSInteger)BM;
+ (BOOL)setAssociateValueWithkeyBm:(NSInteger)BM;
+ (BOOL)setAssociateWeakValueWithkeyBm:(NSInteger)BM;
+ (BOOL)removeAssociatedValuesBm:(NSInteger)BM;
+ (BOOL)getAssociatedValueForKeyBm:(NSInteger)BM;
+ (BOOL)classNameBm:(NSInteger)BM;
+ (BOOL)classNameBm:(NSInteger)BM;
+ (BOOL)deepCopyBm:(NSInteger)BM;
+ (BOOL)deepCopyWithArchiverUnarchiverBm:(NSInteger)BM;

@end
