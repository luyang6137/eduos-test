
include "common.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 创建管理员
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/eduosapi/admin_user/lytest", api.name="创建管理员lytest")
    // 相同请求方式及请求路径测试
    lytest.GetLogFileTreeResponse GetLogFileTree2(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/samepath", api.name="相同路径_lytest")
    // 相同请求方式及请求路径测试2
    lytest.GetLogFileTreeResponse GetLogFileTree3(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/samepath", api.name="相同路径_lytest2")
    // 业务测试
    lytest.GetLogFileTreeResponse GetLogFileTree4(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/status/200", api.name="返回200")
}
