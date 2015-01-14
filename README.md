TQStarRatingView
================

## 星星评分控件

IOS 星星评分视图控件，点击和滑动评分。

### 我增加了什么功能

- delegate

    ```//可以用于设置星星范围控制
    - (BOOL)starRatingView:(TQStarRatingView *)view shouldShowScore:(float)score;
    ```
- 属性fillType，用于控制星星显示粒度

    ```/**
     填充粒度
     */
    typedef enum : NSUInteger {
        StartFillTypeAll,   //自由填充 粒度是0.01
        StartFillTypeHalf,  //半颗星
        StartFillTypeFull,  //一颗星
    } StartFillType;
```

#### 控件效果

![Image text](http://github.com/TinyQ/TQStarRatingView/raw/master/READMEIMAGE/TQStarRatingView.gif)

#### 初始化

```objective-c
TQStarRatingView *starRatingView = [[TQStarRatingView alloc] initWithFrame:CGRectMake(30, 200, 250, 50)
                                                                  numberOfStar:5];
starRatingView.delegate = self;
[self.view addSubview:starRatingView];
```
    
#### 委托回调处理分数变更

```objective-c

-(void)starRatingView:(TQStarRatingView *)view score:(float)score
{
 	self.scoreLabel.text = [NSString stringWithFormat:@"%0.2f",score * 10 ];
}

```
    
#### 用代码设置分数 参数需要在0-1之间。

```objective-c

[self.starRatingView setScore:0.5f withAnimation:YES];

``` 
    
```objective-c    

[self.starRatingView setScore:0.5f withAnimation:YES completion:^(BOOL finished)
{
    NSLog(@"%@",@"starOver");
}];

```  
  
####  About TinyQ

 email : <tinyqf@gmail.com>
 
 blogs : <http://tinyq.me>
 
 
