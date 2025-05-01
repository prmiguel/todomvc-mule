%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "Id": "ec335d46-d575-47f9-a1f1-3e92e8aa616a",
    "Completed": false,
    "Order": 0,
    "Title": "Buy apples"
  }
])