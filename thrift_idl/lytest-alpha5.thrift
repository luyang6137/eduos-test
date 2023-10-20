include "user/admin_user.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 超长>8182
    // lytest.GetLogFileTreeResponse GetLogFileTree1(1: lytest.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path", api.name="测试测试_lytest")
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser1(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/samepath", api.name="相同路径111")
    // 相同路径
    // admin_user.CreateAdminUserResponse CreateAdminUser2(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/samepath", api.name="相同路径222")
    // 缺少路径
    admin_user.CreateAdminUserResponse CreateAdminUser3(1: admin_user.CreateAdminUserRequest req) (api.name="相同路径222")
    // 创建管理员-edit
    admin_user.CreateAdminUserResponse CreateAdminUser4(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user", api.name="创建管理员_name")
}
