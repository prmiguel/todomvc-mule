%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "id": "ec335d46-d575-47f9-a1f1-3e92e8aa616a",
    "completed": false,
    "title": "Buy apples",
    "url": null,
    "order": 0,
    "source": "db"
  },
  {
    "id": "a389aafe-3f4d-4890-bb2c-bb74fec5941f",
    "completed": false,
    "order": 1,
    "title": "h",
    "url": "https://csharp-todo-backend.azurewebsites.net/api/v1/todo/a389aafe-3f4d-4890-bb2c-bb74fec5941f",
    "source": "api"
  },
  {
    "id": "1",
    "order": 95,
    "title": "Do something",
    "completed": false,
    "url": null,
    "source": "csv"
  }
])