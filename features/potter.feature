Feature: PotterShoppingCart
  In order to 提供最便宜的價格給來買書的爸爸媽媽
  As a 佛心的出版社老闆
  I want to 設計一個哈利波特的購物車

Scenario Outline: 算出最便宜的價格
  Given 第一集買了 <firstQuota> 本
  And 第二集買了 <secondQuota> 本
  And 第三集買了 <thirdQuota> 本
  And 第四集買了 <fourthQuota> 本
  And 第五集買了 <fifthQuota> 本
  When 結帳
  Then 價格應為 <fee> 元
  Examples:
 | firstQuota | secondQuota | thirdQuota | fourthQuota | fifthQuota | fee  |
 | 1          | 0           | 0          | 0           | 0          | 100  |
 | 1          | 1           | 0          | 0           | 0          | 190  |
 | 1          | 1           | 1          | 0           | 0          | 270  |
 | 1          | 1           | 1          | 1           | 0          | 320  |
 | 1          | 1           | 1          | 1           | 1          | 375  |
 | 1          | 1           | 2          | 0           | 0          | 370  |
 | 1          | 2           | 2          | 0           | 0          | 460  |
 | 1          | 11          | 0          | 0           | 0          | 1190 |
 | 2          | 2           | 2          | 0           | 0          | 540  |
 | 1          | 2           | 3          | 4           | 5          | 1255 |
 | 1          | 2           | 3          | 4           | 6          | 1355 |