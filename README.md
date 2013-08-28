TQStarRatingView
================

IOS 星星评分视图控件，点击和滑动评分。



    ================================================
    TQStarRatingView *starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(0, 300, 250, 50) numberOfStar:5];
    starRatingView.delegate = self;
    [self.view addSubview:starRatingView];
    ================================================
    -(void)starRatingView:(TQStarRatingView *)view score:(float)score{
      self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
    }
