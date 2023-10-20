include "common.thrift"
include "user/admin_user.thrift"
include "order/user_order.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 超长>8182
    // lytest.GetLogFileTreeResponse GetLogFileTree1(1: lytest.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path", api.name="测试测试_lytest")
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser1(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/samepath", api.name="相同路径111")
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser2(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/samepath", api.name="相同路径222")
    // 缺少路径
    // admin_user.CreateAdminUserResponse CreateAdminUser3(1: admin_user.CreateAdminUserRequest req) (api.name="相同路径222")
    // 创建管理员
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user", api.name="创建管理员_name")
    // 删除管理员
    common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) (api.delete="/eduosapi/admin_user/:id", api.name="删除管理员_name")
    /* 获取管理员信息 */
    admin_user.GetAdminUserResponse GetAdminUser(1: admin_user.GetAdminUserRequest req) (api.get="/eduosapi/admin_user", api.name="获取管理员信息_name")
    # 更新管理员信息
    common.EmptyResponse UpdateAdminUser(1: admin_user.UpdateAdminUserRequest req) (api.put="/eduosapi/admin_user/:id", api.name="更新管理员信息_name")
    # 获取订单信息
    user_order.GetUserOrderResponse GetUserOrder(1: user_order.GetUserOrderRequest req) (api.post="/test/path", api.name="获取订单_name")
}
