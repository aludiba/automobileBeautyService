//
//  stbaSearchAddressBookTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaChooseAddressBookTableViewCell.h"
#import "stbaAddressBookModel.h"
@interface stbaChooseAddressBookTableViewCell()
@property(nonatomic, strong)UIImageView *selectImgView;
@property(nonatomic, strong)UILabel *nameLabel;
@end
@implementation stbaChooseAddressBookTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.selectImgView];
        [self.contentView addSubview:self.nameLabel];
        
        [self.selectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(10);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.selectImgView.mas_trailing).offset(4);
            make.top.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-10);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.nameLabel.mas_bottom).offset(15);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddressBookModel *)model{
    _model = model;
    self.nameLabel.text = _model.name;
    if (_model.isSlect) {
        self.selectImgView.image = [UIImage imageNamed:@"btn_default_active2"];
    }else{
        self.selectImgView.image = [UIImage imageNamed:@"btn_selected_default2"];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)selectImgView{
    if (!_selectImgView) {
        _selectImgView = [[UIImageView alloc] init];
        _selectImgView.image = [UIImage imageNamed:@"btn_selected_default2"];
    }
    return _selectImgView;
}
- (UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _nameLabel.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
    return _nameLabel;
}
@end
