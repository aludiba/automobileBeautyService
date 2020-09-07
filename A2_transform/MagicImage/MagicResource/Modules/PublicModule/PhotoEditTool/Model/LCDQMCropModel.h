#import <Foundation/Foundation.h>
#import <YYModel.h>
@interface LCDQMCropModel : NSObject<YYModel>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, assign) NSInteger type;
+ (NSArray<LCDQMCropModel *> *)buildCropModels;
@end
