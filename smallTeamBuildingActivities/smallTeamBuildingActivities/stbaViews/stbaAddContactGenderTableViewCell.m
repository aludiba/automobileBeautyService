//
//  stbaAddContactGenderTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddContactGenderTableViewCell.h"
#import "stbaAddContactViewModel.h"

@interface stbaAddContactGenderTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@end
@implementation stbaAddContactGenderTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make){
            make.leading.equalTo(self.contentView).offset(26);
            make.top.equalTo(self.contentView).offset(15.5);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make){
            make.leading.equalTo(self.contentView).offset(123);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-33.5);
            make.height.mas_equalTo(48);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddContactViewModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if (_model.content.length) {
        self.contentLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        self.contentLbl.text = _model.content;
    } else {
        self.contentLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        self.contentLbl.text = _model.placeholder;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (_titleLbl == nil) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _titleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (_contentLbl == nil) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _contentLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _contentLbl;
}
@end
