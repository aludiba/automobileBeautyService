#import <Foundation/Foundation.h>
@class RACSequence<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSOrderedSet<__covariant ObjectType> (RACSequenceAdditions)
@property (nonatomic, copy, readonly) RACSequence<ObjectType> *rac_sequence;
@end
NS_ASSUME_NONNULL_END
