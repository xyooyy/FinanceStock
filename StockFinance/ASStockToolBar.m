//
//  ASStockToolBar.m
//  LineChart2
//
//  Created by  on 12-11-19.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import "ASStockToolBar.h"

@implementation ASStockToolBar

- (id)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame: (CGRect)frame : (NSArray*) arrayChar 
                   : (UIColor*)colorBackGround  : (UIColor*) colorFont : (UIColor*) colorHighLight
{
    self = [super initWithFrame:frame];
    if(self)
    {
        m_SegmentedArray = [[NSArray alloc]initWithArray:arrayChar];
        m_cBackGroundColor = colorBackGround;
        m_cFontColor = colorFont;
        m_cHighLightColor = colorHighLight;
    }
    
    return self;
}

-(void)CreateToolBar
{    
    //初始化UISegmentedControl  
    
    segmentedControl = [[UISegmentedControl alloc]initWithItems:m_SegmentedArray]; 
    
    segmentedControl.frame = self.frame;  
    
    segmentedControl.selectedSegmentIndex = 1;//设置默认选择项索引  
    //设置样式
    segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    
    
    //这个设置的是此视图的背景
    //[segmentedControl setBackgroundColor:m_cBackGroundColor];
    
    
    segmentedControl.tintColor = m_cBackGroundColor;
    [segmentedControl setHighlighted:YES];
    
    
    [segmentedControl addTarget:self action:@selector(ToolBarPressed:) forControlEvents:UIControlEventValueChanged];
    
    //正常状态下字体的颜色
    NSDictionary* textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    m_cFontColor, UITextAttributeTextColor,
                                    nil];
    [segmentedControl setTitleTextAttributes:textAttributes forState:UIControlStateNormal];
    
    //选中状态下字体的颜色
    textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                      m_cHighLightColor, UITextAttributeTextColor,
                      nil];
    [segmentedControl setTitleTextAttributes:textAttributes forState:UIControlStateHighlighted];
    
    
    [self addSubview:segmentedControl];
}

-(IBAction)ToolBarPressed:(id)sender
{
    return;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
