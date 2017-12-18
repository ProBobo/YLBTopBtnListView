//
//  TopGiftListBtnView.h
//  QiYuLive
//
//  Created by 余礼钵 on 2017/12/17.
//  Copyright © 2017年 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TopGiftListBtnView_TitleBtn_Block)(int tag);
@interface TopGiftListBtnView : UIView
@property(nonatomic , strong)NSMutableArray *titleBtnArray;
@property(nonatomic , strong)UIView *bottomLine;
@property(nonatomic , copy)TopGiftListBtnView_TitleBtn_Block titleBtn_Block;

- (instancetype)initWithFrame:(CGRect)frame titleArray:(NSMutableArray *)titleArray fontHeight:(CGFloat)fontHeight colorNormal:(UIColor *)colorNormal colorSelected:(UIColor *)colorSelected titleBtn_Block:(TopGiftListBtnView_TitleBtn_Block)titleBtn_Block;
- (void)changeBtn_Method:(int)tag;
@end
