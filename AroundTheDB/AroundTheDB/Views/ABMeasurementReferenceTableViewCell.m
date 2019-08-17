//
//  ABMeasurementReferenceTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementReferenceTableViewCell.h"
@interface ABMeasurementReferenceTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@property(nonatomic, strong)UILabel *contentLbl1;
@property(nonatomic, strong)UILabel *contentLbl2;
@property(nonatomic, strong)UILabel *contentLbl3;
@property(nonatomic, strong)UILabel *contentLbl4;
@property(nonatomic, strong)UILabel *contentLbl5;
@end
@implementation ABMeasurementReferenceTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.contentLbl1];
        [self.contentView addSubview:self.contentLbl2];
        [self.contentView addSubview:self.contentLbl3];
        [self.contentView addSubview:self.contentLbl4];
        [self.contentView addSubview:self.contentLbl5];
         
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
        }];
         [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
             make.centerX.equalTo(self.contentView);
             make.top.equalTo(self.titleLbl.mas_bottom).offset(25);
             make.width.mas_equalTo(ABWIDTH - 60);
             make.height.mas_equalTo(15);
         }];
        [self.contentLbl1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl.mas_bottom).offset(25);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
        }];
        [self.contentLbl2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl1.mas_bottom).offset(25);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
        }];
        [self.contentLbl3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl2.mas_bottom).offset(25);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
        }];
        [self.contentLbl4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl3.mas_bottom).offset(25);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
        }];
        [self.contentLbl5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl4.mas_bottom).offset(25);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(15);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.backgroundColor = ABH_Color(15, 18, 39, 1);
        _titleLbl.textColor = ABH_Color(245, 245, 245, 1);
        _titleLbl.text = @"分贝参照表:";
        _titleLbl.font = [UIFont systemFontOfSize:14];
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl.text = @"0-20dB      极静，几乎感觉不到";
        _contentLbl.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl;
}
- (UILabel *)contentLbl1{
    if (!_contentLbl1) {
        _contentLbl1 = [[UILabel alloc] init];
        _contentLbl1.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl1.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl1.text = @"20-40dB      安静，相当于轻声说话";
        _contentLbl1.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl1;
}
- (UILabel *)contentLbl2{
    if (!_contentLbl2) {
        _contentLbl2 = [[UILabel alloc] init];
        _contentLbl2.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl2.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl2.text = @"40-60dB      一般，相当于室内谈话";
        _contentLbl2.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl2;
}
- (UILabel *)contentLbl3{
    if (!_contentLbl3) {
        _contentLbl3 = [[UILabel alloc] init];
        _contentLbl3.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl3.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl3.text = @"60-70dB      吵闹，有损神经";
        _contentLbl3.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl3;
}
- (UILabel *)contentLbl4{
    if (!_contentLbl4) {
        _contentLbl4 = [[UILabel alloc] init];
        _contentLbl4.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl4.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl4.text = @"70-90dB      很吵，长期会损伤神经细胞";
        _contentLbl4.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl4;
}
- (UILabel *)contentLbl5{
    if (!_contentLbl5) {
        _contentLbl5 = [[UILabel alloc] init];
        _contentLbl5.backgroundColor = ABH_Color(15, 18, 39, 1);
        _contentLbl5.textColor = ABH_Color(245, 245, 245, 1);
        _contentLbl5.text = @"90-120dB      极吵，会使人听力受损，难以忍受";
        _contentLbl5.font = [UIFont systemFontOfSize:14];
    }
    return _contentLbl5;
}
@end
