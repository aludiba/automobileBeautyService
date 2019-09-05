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
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.limitsLbl];
        [self.contentView addSubview:self.backView];
        [self.backView addSubview:self.contentV];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.contentView).offset(60);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor redColor];
        _titleLbl.font = [UIFont systemFontOfSize:20];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor redColor];
        _contentLbl.font = [UIFont systemFontOfSize:15];
        _contentLbl.numberOfLines = 0;
    }
    return _contentLbl;
}
- (UILabel *)limitsLbl{
    if (!_limitsLbl) {
        _limitsLbl = [[UILabel alloc] init];
        _limitsLbl.textColor = [UIColor redColor];
        _limitsLbl.font = [UIFont systemFontOfSize:16];
        _limitsLbl.numberOfLines = 0;
    }
    return _limitsLbl;
}
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor grayColor];
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
