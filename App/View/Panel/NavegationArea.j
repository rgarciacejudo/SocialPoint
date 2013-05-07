

@import <AppKit/CPCollectionView.j>


@implementation NavegationArea : CPView
{
	
}

- (id)initWithFrame(CGRect):aFrame
{
	self = [super initWithFrame:aFrame];
    
    if(self){

    	[self setBackgroundColor:[CPColor colorWithHexString:"E8EAEE"]];
    	// This view will grow in height, but stay fixed width attached to the left side of the screen.
    	[self setAutoresizingMask:CPViewHeightSizable];
    }

    return self;

}

@end
