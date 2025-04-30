import * from bat::BDD
import * from bat::Assertions
---
suite("GET /todo suite") in [
  it must 'answer 200' in [
    GET `$(config.url)` with {} assert [
      $.response.status mustEqual 200,
      sizeOf($.response.body) mustEqual 2
    ] execute [
     log('Configuration:', config.env),
     log('Body:', $.response.body)
    ]
  ],
  it must 'answer success' in [
    GET `$(config.url)` with {} assert [
      $.response.status mustEqual 200,
    ] execute [
     log('Configuration:', config.env),
     log('Body:', $.response.body)
    ]
  ]
]