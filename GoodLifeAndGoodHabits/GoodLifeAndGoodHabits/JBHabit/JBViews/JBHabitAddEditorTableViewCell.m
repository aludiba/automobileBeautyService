//
//  JBHabitAddEditorTableViewCell.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitAddEditorTableViewCell.h"
#import "JBHabitViewModel.h"

@interface JBHabitAddEditorTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *JBeditableView;
@property(nonatomic, strong)UILabel *JBhiddenLbl;
@property(nonatomic, strong)UIView *JBLine;
@end
@implementation JBHabitAddEditorTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.JBeditableView];
        [self.JBeditableView addSubview:self.JBhiddenLbl];
        
        [self.JBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            make.leading.equalTo(self.contentView).offset(20);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_greaterThanOrEqualTo(22);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
        }];
        [self.JBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBeditableView).offset(6);
            make.leading.equalTo(self.JBeditableView).offset(6);
            make.trailing.equalTo(self.JBeditableView).offset(-6);
            make.top.equalTo(self.JBeditableView.mas_bottom).offset(-6);
        }];
    }
    return self;
}
- (void)setJBViewModel:(JBHabitViewModel *)JBViewModel{
    _JBViewModel = JBViewModel;
    if ([_JBViewModel.JBDefault length]) {
        self.JBhiddenLbl.text = _JBViewModel.JBDefault;
    } else {
        self.JBhiddenLbl.text = @"";
    }
    if (_JBViewModel.JBContent.length) {
        self.JBeditableView.text = _JBViewModel.JBContent;
        self.JBhiddenLbl.hidden = YES;
    } else {
        self.JBeditableView.text = @"";
        self.JBhiddenLbl.hidden = NO;
    }
    if (self.JBViewModel.JBhabitviewtype == JBHabitViewTypeEditNum) {
        self.JBeditableView.keyboardType = UIKeyboardTypeNumberPad;
    }else if (self.JBViewModel.JBhabitviewtype == JBHabitViewTypeEditString) {
        self.JBeditableView.keyboardType = UIKeyboardTypeDefault;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.JBhiddenLbl.hidden = NO;
    } else {
        self.JBhiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.JBeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.JBViewModel.JBContent = textView.text;
    self.JBcontentHeight = size.height;
    if (self.JBeditBlock) {
        self.JBeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.JBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.JBhiddenLbl.hidden = NO;
    }else{
        self.JBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)JBhiddenLbl{
    if (!_JBhiddenLbl) {
        _JBhiddenLbl = [[UILabel alloc] init];
        _JBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _JBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _JBhiddenLbl;
}
- (UITextView *)JBeditableView{
    if (!_JBeditableView) {
        _JBeditableView = [[UITextView alloc] init];
        _JBeditableView.delegate = self;
        _JBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:20];
        _JBeditableView.textColor = [UIColor blackColor];
        _JBeditableView.layer.cornerRadius = 8.0f;
        _JBeditableView.layer.masksToBounds = YES;
        _JBeditableView.layer.borderColor = [UIColor grayColor].CGColor;
        _JBeditableView.layer.borderWidth = 1.5f;
        _JBeditableView.scrollEnabled = NO;
        [_JBeditableView sizeToFit];
    }
    return _JBeditableView;
}
- (UIView *)JBLine{
    if (!_JBLine) {
        _JBLine = [[UIView alloc] init];
        _JBLine.backgroundColor = JBH_Color(242, 242, 242, 1);
    }
    return _JBLine;
}
@end
