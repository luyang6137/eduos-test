include "common.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 测试1
    lytest.GetLogFileTreeResponse GetLogFileTree1(1: lytest.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/test/path", api.name="测试测试_lytest")
    // 删除管理员-edit
    common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) (api.delete="/eduosapi/admin_user/:id", api.name="删除管理员_name")
}
