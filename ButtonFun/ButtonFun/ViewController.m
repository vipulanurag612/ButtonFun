//
//  ViewController.m
//  ButtonFun
//
//  Created by Anurag on 7/30/15.
//  Copyright (c) 2015 Anurag. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"

NSString *kCellID = @"cellID";          //UICollectionViewCell storyBoard id

@implementation ViewController

#pragma mark CollectionView delegates

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 1000;         //Random value to cover screens of all Apple devices
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell  = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor RandomColor];  //RandomColor category added to provide ramdom colors
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor RandomColor];
}

@end
