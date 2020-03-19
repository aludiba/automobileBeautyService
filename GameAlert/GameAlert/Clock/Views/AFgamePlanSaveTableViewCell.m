//
//  AFgamePlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFgamePlanSaveTableViewCell.h"
@interface AFgamePlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *AFsaveButton;//保存按钮
@end
@implementation AFgamePlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(24, 50, 62, 1);
        [self.contentView addSubview:self.AFsaveButton];
        [self.AFsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(30);
            make.leading.equalTo(self.contentView).offset(120);
            make.height.mas_equalTo(60);
            make.trailing.equalTo(self.contentView).offset(-120);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
    }
    return self;
}
- (void)AFbtnClick{
    if (self.AFgamePlanSaveB) {
        self.AFgamePlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)AFsaveButton{
    if (!_AFsaveButton) {
        _AFsaveButton = [[UIButton alloc] init];
        [_AFsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFsaveButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_AFsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AFsaveButton setBackgroundColor:AFH_Color(24, 50, 62, 1)];
        _AFsaveButton.layer.cornerRadius = 16.0f;
        _AFsaveButton.layer.masksToBounds = YES;
        _AFsaveButton.layer.borderWidth = 2.0f;
        _AFsaveButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AFsaveButton addTarget:self action:@selector(AFbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFsaveButton;
}
@end
