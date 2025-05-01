%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "data": [
    {
      "id": "ec335d46-d575-47f9-a1f1-3e92e8aa616a",
      "completed": false,
      "title": "Buy apples",
      "url": null,
      "order": 0,
      "source": "db"
    }
  ],
  "count": 1
})