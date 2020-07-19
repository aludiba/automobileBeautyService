#import "MASViewAttribute.h"
#import "MASConstraint.h"
#import "MASLayoutConstraint.h"
#import "MASUtilities.h"
#import "MASViewConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint.h"
#import "MASLayoutConstraint.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>

@interface MASViewConstraint (Bm)
+ (BOOL)initWithFirstViewAttributeBm:(NSInteger)BM;
+ (BOOL)copyWithZoneBm:(NSInteger)BM;
+ (BOOL)installedConstraintsForViewBm:(NSInteger)BM;
+ (BOOL)setLayoutConstantBm:(NSInteger)BM;
+ (BOOL)setLayoutRelationBm:(NSInteger)BM;
+ (BOOL)supportsActivePropertyBm:(NSInteger)BM;
+ (BOOL)isActiveBm:(NSInteger)BM;
+ (BOOL)hasBeenInstalledBm:(NSInteger)BM;
+ (BOOL)setSecondViewAttributeBm:(NSInteger)BM;
+ (BOOL)(CGFloat))multipliedByBm:(NSInteger)BM;
+ (BOOL)(CGFloat))dividedByBm:(NSInteger)BM;
+ (BOOL)(MASLayoutPriority))priorityBm:(NSInteger)BM;
+ (BOOL)(id, NSLayoutRelation))equalToWithRelationBm:(NSInteger)BM;
+ (BOOL)withBm:(NSInteger)BM;
+ (BOOL)andBm:(NSInteger)BM;
+ (BOOL)addConstraintWithLayoutAttributeBm:(NSInteger)BM;
+ (BOOL)animatorBm:(NSInteger)BM;
+ (BOOL)(id))keyBm:(NSInteger)BM;
+ (BOOL)setInsetsBm:(NSInteger)BM;
+ (BOOL)setInsetBm:(NSInteger)BM;
+ (BOOL)setOffsetBm:(NSInteger)BM;
+ (BOOL)setSizeOffsetBm:(NSInteger)BM;
+ (BOOL)setCenterOffsetBm:(NSInteger)BM;
+ (BOOL)activateBm:(NSInteger)BM;
+ (BOOL)deactivateBm:(NSInteger)BM;
+ (BOOL)installBm:(NSInteger)BM;
+ (BOOL)layoutConstraintSimilarToBm:(NSInteger)BM;
+ (BOOL)uninstallBm:(NSInteger)BM;

@end
