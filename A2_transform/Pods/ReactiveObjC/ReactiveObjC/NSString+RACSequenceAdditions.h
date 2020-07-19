#import <Foundation/Foundation.h>
@class RACSequence<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface NSString (RACSequenceAdditions)
@property (nonatomic, copy, readonly) RACSequence<NSString *> *rac_sequence;
@end
NS_ASSUME_NONNULL_END
