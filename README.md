UITableView-Wave
================

![效果](http://ww3.sinaimg.cn/mw690/a43af4ffgw1efprcfazvdg208y0d3n2g.gif)


## 说明
* 1:tableview在数据进行刷新时进行动画
* 2:cell wave 的方向可以进行左右切换
* 3:bounce效果

## 代码说明

* 1: 为了简单易用 想到的是用category 而非继承的方式,这样我只需要在使用的地方将头文件引入过来就可以直接调用里面的方法了.
所以我先创建了类UITableView+Wave
头文件 UITableView+Wave.h
* 2: 目前网上大部分cell动画实现 - (void)tableView:(UITableView *)tableView willDisplayCell:(TestTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath 函数进行实现  但是我觉得这样子耦合性太强  
* 3:效率方面 当reload时 只针对当前显示的cell 进行动画

## 使用方法

* 1. 引入 UITableView+Wave.h
* 2. 调用 [self.tableView reloadDataAnimateWithWave:RightToLeftWaveAnimation];

## 探讨

有问题请[@逸书](http://weibo.com/hufengvip)
