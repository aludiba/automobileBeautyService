//
//  PKBillHistoryTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/9/8.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBillHistoryTableViewCell.h"
//#import "PKBudgetModel.h"

@interface PKBillHistoryTableViewCell()
@property(nonatomic, strong)UILabel *dateLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@end

@implementation PKBillHistoryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.dateLbl];
        
        [self.dateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(5);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(16);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.dateLbl.mas_bottom).offset(5);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(PKHEIGHT);
            make.bottom.equalTo(self.contentView).offset(-5);
        }];
    }
    return self;
}
//- (void)setModel:(PKBudgetModel *)model{
//    _model = model;
//    
//}
- (void)setContentString:(NSString *)contentString{
    _contentString = contentString;
    self.contentLbl.text = _contentString;
    CGSize size = [self.contentLbl sizeThatFits:CGSizeMake(PKWIDTH - 30, MAXFLOAT)];
    [self.contentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.contentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)dateLbl{
    if (!_dateLbl) {
        _dateLbl = [[UILabel alloc] init];
        _dateLbl.textColor = [UIColor blackColor];
        _dateLbl.font = [UIFont systemFontOfSize:14];
        _dateLbl.numberOfLines = 0;
    }
    return _dateLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor blackColor];
        _contentLbl.font = [UIFont systemFontOfSize:15];
        _contentLbl.numberOfLines = 0;
    }
    return _contentLbl;
}
@end
