include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
#include "bucunzai.thrift"

service ApiService {
    // 创建管理员
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/samepath", api.name="创建管理员nn")
    // 创建管理员2
    admin_user.CreateAdminUserResponse CreateAdminUser2(1: admin_user.CreateAdminUserRequest req) (api.post="/samepath", api.name="创建管理员222")
    // 创建管理员3
    admin_user.CreateAdminUserResponse CreateAdminUser3(1: admin_user.CreateAdminUserRequest req) (api.post="/status/200", api.name="业务测试")
    // 删除管理员
    common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) (api.delete="/eduosapi/admin_user/id", api.name="删除管理员nn")
    /* 获取管理员信息*/
    admin_user.GetAdminUserResponse GetAdminUser(1: admin_user.GetAdminUserRequest req) (api.get="/eduosapi/admin_user", api.name="获取管理员信息nn")
    # 更新管理员信息
    common.EmptyResponse UpdateAdminUser(1: admin_user.UpdateAdminUserRequest req) (api.put="/eduosapi/admin_user/id", api.name="更新管理员信息nn")
    # 获取订单信息
    user_order.GetUserOrderResponse GetUserOrder(1: user_order.GetUserOrderRequest req) (api.get="/eduosapi/user_order", api.name="获取订单")
}
