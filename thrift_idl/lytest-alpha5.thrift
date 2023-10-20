include "user/admin_user.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 测试1
    lytest.GetLogFileTreeResponse GetLogFileTree1(1: lytest.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path", api.name="测试测试_lytest")
    // 创建管理员-edit
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user", api.name="创建管理员_name")
}
