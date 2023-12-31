
include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
#include "bucunzai.thrift"

service ApiService {
    // 创建管理员-edit
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user", api.name="创建管理员_name")
    // 删除管理员-edit
    common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) (api.delete="/eduosapi/admin_user/:id", api.name="删除管理员_name")
    /* 获取管理员信息-edit */
    admin_user.GetAdminUserResponse GetAdminUser(1: admin_user.GetAdminUserRequest req) (api.get="/eduosapi/admin_user", api.name="获取管理员信息_name")
    # 更新管理员信息-edit
    common.EmptyResponse UpdateAdminUser(1: admin_user.UpdateAdminUserRequest req) (api.put="/eduosapi/admin_user/:id", api.name="更新管理员信息_name")
    # 获取订单信息-edit
    user_order.GetUserOrderResponse GetUserOrder(1: user_order.GetUserOrderRequest req) (api.get="/eduosapi/user_order", api.name="获取订单_name")
}
