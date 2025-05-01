%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "id": "a389aafe-3f4d-4890-bb2c-bb74fec5941f",
    "completed": false,
    "order": 1,
    "title": "h",
    "url": "https://csharp-todo-backend.azurewebsites.net/api/v1/todo/a389aafe-3f4d-4890-bb2c-bb74fec5941f"
  }
])