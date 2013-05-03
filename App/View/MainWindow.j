


@import <AppKit/CPWindow.j>
@import "Panel/MetaDataArea.j"
@import "Panel/NavegationArea.j"
@import "Panel/ContentArea.j"
@import "Panel/MainToolBar.j"


@implementation MainWindow : CPWindow
{
	
}

- (id) init
{
	self = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    if(self){
        contentView = [self contentView];
        var navegationArea = [[NavegationArea alloc] initWithContent:contentView];
        var metaDataArea = [[MetaDataArea alloc] initWithNavegationArea:navegationArea];
        var contentArea = [[ContentArea alloc] initWithContent:contentView];
        var mainToolBar = [[MainToolBar alloc] initWithContent:contentView];

        [contentView addSubview:metaDataArea];
        [contentView addSubview:navegationArea];
        [contentView addSubview:contentArea];
    }
    return self;
       
}

@end
