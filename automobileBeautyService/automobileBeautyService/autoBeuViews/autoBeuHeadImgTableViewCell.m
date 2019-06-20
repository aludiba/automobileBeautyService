//
//  auto4sHeadImgTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/12.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "autoBeuHeadImgTableViewCell.h"
@interface autoBeuHeadImgTableViewCell()
@property(nonatomic, strong)UIImageView *autoBeuHeadImgView;
@end
@implementation autoBeuHeadImgTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.autoBeuHeadImgView];
        [self.autoBeuHeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.height.mas_equalTo(180);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    
}
#pragma mark - 属性懒加载
- (UIImageView *)autoBeuHeadImgView{
    if (!_autoBeuHeadImgView) {
        _autoBeuHeadImgView = [[UIImageView alloc] init];
        [_autoBeuHeadImgView setImage:[UIImage imageNamed:@"waterInCar"]];
    }
    return _autoBeuHeadImgView;
}
@end
