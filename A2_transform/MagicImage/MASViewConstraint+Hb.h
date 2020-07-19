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

@interface MASViewConstraint (Hb)
+ (BOOL)initWithFirstViewAttributeHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHb:(NSInteger)hb;
+ (BOOL)installedConstraintsForViewHb:(NSInteger)hb;
+ (BOOL)setLayoutConstantHb:(NSInteger)hb;
+ (BOOL)setLayoutRelationHb:(NSInteger)hb;
+ (BOOL)supportsActivePropertyHb:(NSInteger)hb;
+ (BOOL)isActiveHb:(NSInteger)hb;
+ (BOOL)hasBeenInstalledHb:(NSInteger)hb;
+ (BOOL)setSecondViewAttributeHb:(NSInteger)hb;
+ (BOOL)(CGFloat))multipliedByHb:(NSInteger)hb;
+ (BOOL)(CGFloat))dividedByHb:(NSInteger)hb;
+ (BOOL)(MASLayoutPriority))priorityHb:(NSInteger)hb;
+ (BOOL)(id, NSLayoutRelation))equalToWithRelationHb:(NSInteger)hb;
+ (BOOL)withHb:(NSInteger)hb;
+ (BOOL)andHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHb:(NSInteger)hb;
+ (BOOL)animatorHb:(NSInteger)hb;
+ (BOOL)(id))keyHb:(NSInteger)hb;
+ (BOOL)setInsetsHb:(NSInteger)hb;
+ (BOOL)setInsetHb:(NSInteger)hb;
+ (BOOL)setOffsetHb:(NSInteger)hb;
+ (BOOL)setSizeOffsetHb:(NSInteger)hb;
+ (BOOL)setCenterOffsetHb:(NSInteger)hb;
+ (BOOL)activateHb:(NSInteger)hb;
+ (BOOL)deactivateHb:(NSInteger)hb;
+ (BOOL)installHb:(NSInteger)hb;
+ (BOOL)layoutConstraintSimilarToHb:(NSInteger)hb;
+ (BOOL)uninstallHb:(NSInteger)hb;

@end
