//
//  ASPositionConv.h
//  LineChart2
//
//  Created by  on 12-11-16.
//  Copyright (c) 2012年 Alpha Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPosConv.h"

@interface ASPositionConv : NSObject
{
    //分别保存最高点和最低点，把stockinfo压到数组
    NSMutableArray *m_arrStockInfo;
    NSMutableArray *m_arrStockInfoPos;
    
    double m_dbHighestPoint;
    double m_dbLowestPoint;
    //获得下一个位置
    
    
    UIImageView *m_imageView;
    double m_dbUnitY ;
    
    int m_nCount;
}
//-(id)initWith:(NSMutableArray *)arrStockInfo;
-(id)init :(UIImageView*)image;
//找最后的那个最高点和最低点
-(BOOL) AddStockInfo : (ASStockPriceInfo*)stockInfo;
//数组
-(void) CreatePos;

-(void)SaveInMutableArray;

-(ASStockPosInfo*) GetNextPosInfo;

-(void) ResetCout;

@end
