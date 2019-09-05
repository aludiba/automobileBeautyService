//
//  PKBudgetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/9/5.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBudgetTableViewCell.h"
#import "PKBudgetModel.h"

@interface PKBudgetTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;//标题
@property(nonatomic, strong)UILabel *contentLbl;//内容
@property(nonatomic, strong)UILabel *limitsLbl;//限制额度
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)UIView *contentV;
@end

@implementation PKBudgetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = PKH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.limitsLbl];
        [self.contentView addSubview:self.backView];
        [self.backView addSubview:self.contentV];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(40);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.titleLbl.mas_trailing);
            make.centerY.equalTo(self.titleLbl);
            make.height.mas_equalTo(20);
            make.width.mas_equalTo(PKWIDTH * 0.5 - 110);
        }];
        [self.limitsLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-30);
            make.centerY.equalTo(self.titleLbl);
            make.height.mas_equalTo(20);
             make.width.mas_equalTo(PKWIDTH * 0.5 - 30);
        }];
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(5);
            make.trailing.equalTo(self.contentView).offset(-30);
            make.height.mas_equalTo(10);
            make.bottom.equalTo(self.contentView);
        }];
        [self.contentV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.backView);
            make.top.equalTo(self.backView);
            make.width.mas_equalTo(PKWIDTH - 60);
            make.height.mas_equalTo(10);
        }];
    }
    return self;
}
- (void)setModel:(PKBudgetModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    self.contentLbl.text = [NSString stringWithFormat:@"%@%@",_model.content,_model.unit];
    self.limitsLbl.text = [NSString stringWithFormat:@"%@:%@%@",NSLocalizedString(@"限额", nil),_model.limits,_model.unit];
    CGFloat contentNum = [_model.content floatValue];
    CGFloat limitsNum = [_model.limits floatValue];
    CGFloat contentVWidth = (contentNum / limitsNum) * (PKWIDTH - 60);
    [self.contentV mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(contentVWidth);
    }];
    [self.contentV layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blueColor];
        _titleLbl.font = [UIFont boldSystemFontOfSize:20];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor purpleColor];
        _contentLbl.font = [UIFont systemFontOfSize:17];
        _contentLbl.numberOfLines = 0;
    }
    return _contentLbl;
}
- (UILabel *)limitsLbl{
    if (!_limitsLbl) {
        _limitsLbl = [[UILabel alloc] init];
        _limitsLbl.textColor = [UIColor redColor];
        _limitsLbl.font = [UIFont systemFontOfSize:18];
        _limitsLbl.textAlignment = NSTextAlignmentRight;
        _limitsLbl.numberOfLines = 0;
    }
    return _limitsLbl;
}
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = PKH_Color(230, 230, 230, 1);
        _backView.layer.cornerRadius = 2;
        _backView.layer.masksToBounds = YES;
    }
    return _backView;
}
- (UIView *)contentV{
    if (!_contentV) {
        _contentV = [[UIView alloc] init];
        _contentV.backgroundColor = [UIColor redColor];
    }
    return _contentV;
}
@end
