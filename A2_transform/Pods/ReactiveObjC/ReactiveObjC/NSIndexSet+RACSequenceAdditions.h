#import <Foundation/Foundation.h>
@class RACSequence<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSIndexSet (RACSequenceAdditions)
@property (nonatomic, copy, readonly) RACSequence<NSNumber *> *rac_sequence;
@end
NS_ASSUME_NONNULL_END
