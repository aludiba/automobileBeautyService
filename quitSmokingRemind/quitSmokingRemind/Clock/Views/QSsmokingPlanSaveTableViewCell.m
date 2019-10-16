//
//  QSsmokingPlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSsmokingPlanSaveTableViewCell.h"
@interface QSsmokingPlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *saveButton;//保存按钮
@end
@implementation QSsmokingPlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = QSH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.saveButton];
        
        [self.saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(30);
            make.leading.equalTo(self.contentView).offset(32);
            make.height.mas_equalTo(40);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
    }
    return self;
}
- (void)btnClick{
    if (self.QSsmokingPlanSaveB) {
        self.QSsmokingPlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)saveButton{
    if (!_saveButton) {
        _saveButton = [[UIButton alloc] init];
        [_saveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_saveButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_saveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_saveButton setBackgroundColor:[UIColor greenColor]];
        _saveButton.layer.cornerRadius = 10.0f;
        _saveButton.layer.masksToBounds = YES;
        [_saveButton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _saveButton;
}
@end
