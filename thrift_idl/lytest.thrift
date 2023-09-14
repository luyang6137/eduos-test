
include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
#include "bucunzai.thrift"

service ApiService {
    // 创建管理员-lytest
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user/lytest", api.name="创建管理员_lytest")
    // 相同请求方式及请求路径测试
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/samepath", api.name="相同路径_lytest")
}
