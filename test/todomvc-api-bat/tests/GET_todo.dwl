import * from bat::BDD
import * from bat::Assertions
---
suite("GET /todo suite") in [
  it must 'answer 200' in [
    GET `$(config.url)` with {} assert [
      $.response.status mustEqual 200,
      $.response.body.count mustEqual 1
    ] execute [
     log('Configuration:', config.env),
     log('Body:', $.response.body)
    ]
  ]
]