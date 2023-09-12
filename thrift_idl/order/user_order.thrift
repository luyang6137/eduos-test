#include "bucunzai.thrift"

struct GetUserOrderRequest {
    1: required i64 OrderID
}

struct GetUserOrderResponse {
    1: i64 OrderID
    2: string OrderName 
}
