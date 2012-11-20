//
//  ASStockToolBar.h
//  LineChart2
//
//  Created by  on 12-11-19.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASStockToolBar : UIView
{
    UIColor *m_cBackGroundColor;
    UIColor *m_cFontColor;
    UIColor *m_cHighLightColor; 
    UISegmentedControl *segmentedControl;
    NSArray* m_SegmentedArray;
}

- (id)initWithFrame: (CGRect)frame : (NSArray*) arrayChar 
                   : (UIColor*)colorBackGround  : (UIColor*) colorFont : (UIColor*) colorHighLight;

-(void)CreateToolBar;
-(IBAction)ToolBarPressed:(id)sender;
@end
