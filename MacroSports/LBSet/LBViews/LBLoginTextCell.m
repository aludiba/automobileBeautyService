//
//  LBLoginTextCell.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBLoginTextCell.h"

@interface LBLoginTextCell ()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *LBTitleLbl;
@property(nonatomic, strong)UITextField *LBTextFld;
@property(nonatomic, strong)UIView *LBLine;
@end

@implementation LBLoginTextCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.contentView addSubview:self.LBTitleLbl];
    [self.contentView addSubview:self.LBTextFld];
    [self.contentView addSubview:self.LBLine];
    
    [self.LBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.centerY.equalTo(self.contentView);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(20);
    }];
    [self.LBTextFld mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBTitleLbl.mas_trailing);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(5);
        make.height.mas_equalTo(22);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)LBTitleLbl{
    if (!_LBTitleLbl) {
        _LBTitleLbl = [[UILabel alloc] init];
        _LBTitleLbl.textColor = [UIColor blackColor];
        _LBTitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _LBTitleLbl;
}
- (UITextField *)LBTextFld{
    if (!_LBTextFld) {
        _LBTextFld = [[UITextField alloc] init];
        _LBTextFld.clearButtonMode = UITextFieldViewModeWhileEditing;
        _LBTextFld.delegate = self;
        _LBTextFld.textColor = [UIColor blackColor];
        _LBTextFld.font = [UIFont systemFontOfSize:20];
    }
    return _LBTextFld;
}
- (UIView *)LBLine{
    if (!_LBLine) {
        _LBLine = [[UIView alloc] init];
        _LBLine.backgroundColor = LBH_Color(242, 242, 242, 1);
    }
    return _LBLine;
}
@end
