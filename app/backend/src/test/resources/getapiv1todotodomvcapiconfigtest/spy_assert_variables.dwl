%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('csv'),
  $['csv'] must equalTo([
    {
      "id": "1",
      "order": 95,
      "title": "Do something",
      "completed": false,
      "url": null,
      "source": "csv"
    }
  ])
]