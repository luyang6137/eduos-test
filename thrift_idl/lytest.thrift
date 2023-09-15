
include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
#include "bucunzai.thrift"

service ApiService {
    // 创建管理员-lytest
    admin_user.CreateAdminUserResponse1 CreateAdminUser1(1: admin_user.CreateAdminUserRequest1 req) (api.post="/eduosapi/admin_user/lytest/lytest1/lytest2/lytest3/lytest4/lytest5/lytest6/lytest7", api.name="创建管理员_lytest")
    // 相同请求方式及请求路径测试
    admin_user.CreateAdminUserResponse2 CreateAdminUser2(1: admin_user.CreateAdminUserRequest2 req)  (api.post="/samepath", api.name="相同路径_lytest")
    // 相同请求方式及请求路径测试2
    admin_user.CreateAdminUserResponse3 CreateAdminUser3(1: admin_user.CreateAdminUserRequest3 req)  (api.post="/samepath", api.name="相同路径_lytest")
     // 业务测试
    admin_user.CreateAdminUserResponse4 CreateAdminUser4(1: admin_user.CreateAdminUserRequest3 req)  (api.post="/status/200", api.name="返回200")
}
