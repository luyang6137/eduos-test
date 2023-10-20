
include "common.thrift"
include "lytest/lytest.thrift"

service ApiService {
    // 测试1
    lytest.GetLogFileTreeResponse GetLogFileTree1(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.get="/test/path", api.name="测试测试_lytest")
    // 业务测试
    // lytest.GetLogFileTreeResponse GetLogFileTree4(1: logtree.GetLogFileTreeRequest req) throws (1: common.Error err) (api.post="/status/200", api.name="返回200")
}
