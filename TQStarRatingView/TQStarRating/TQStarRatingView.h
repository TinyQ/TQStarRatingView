//
//  TQStarRatingView.h
//  TQStarRatingView
//
//  Created by fuqiang on 13-8-28.
//  Copyright (c) 2013年 TinyQ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TQStarRatingView;

@protocol StarRatingViewDelegate <NSObject>

@optional
-(void)starRatingView:(TQStarRatingView *)view score:(float)score;

@end

@interface TQStarRatingView : UIView

@property (nonatomic, readonly) int numberOfStar;
@property (nonatomic, weak) id <StarRatingViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame numberOfStar:(int)number;

//-- 分数必须在 0-1 之间
- (void)setScore:(float)score withAnimation:(bool)isAnimate;
@end
