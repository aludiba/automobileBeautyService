#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface BKMIHomeModel : UIView
@property (nonatomic, copy) NSString *id;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *pic_url_z;
@property (nonatomic, copy) NSString *pic_url_c;
@property (nonatomic, strong) NSArray *pic_url_detail_array;
@property (nonatomic, copy) NSString *peanut_num;
@property (nonatomic, copy) NSString *product_id;
@end
NS_ASSUME_NONNULL_END
