//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Jaewon Kim on 2017-08-10.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end
